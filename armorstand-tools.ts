import * as CANNON from 'https://cdn.skypack.dev/cannon-es'
// import * as THREE from 'https://cdn.skypack.dev/three'
import { toSnbt, rawJson } from './compile-to-mcfunction.ts'

const s = 0.625; // size of an item (on head)
const tps = 60;

const neckstart = 7/16+1;
const necklength = 0.44625;
const headoffset = new CANNON.Vec3(0, necklength + s/2, 0.25+s/32);
// (65.0075-64.115)/2

/* 
corner: southeastern corner
item: item id
count: number of items
bounds: x and z width of area
slope: rotations of the ground plane about the x, y, and z axes (good for items on stairs, etc)
 */
export function generate_pile(corner: [number, number, number], item: string, count: number, bounds: [number, number], duration: number = 10, slope: [number, number, number] = [0,0,0]) {
	const cornerV = new CANNON.Vec3(...corner);
	return simulate_pile(bounds, count, slope, duration).map(x=>{
		console.log(x);
		x.position.vadd(cornerV, x.position);
		let noffset = new CANNON.Vec3(Math.cos(x.rotation.x)*Math.cos(x.rotation.y)*necklength, Math.sin(x.rotation.x)*Math.sin(x.rotation.y)*necklength, Math.sin(x.rotation.y)*necklength)
		// let noffset = x.quaternion.vmult(headoffset);
		// noffset.z *= -1;
		x.position.vsub(noffset, x.position); // move by offset
		return `summon armor_stand ${x.position.x.toFixed(8)} ${(x.position.y - neckstart).toFixed(8)} ${x.position.z.toFixed(8)} ${toSnbt({
			Pose: {
				Head: `[${x.rotation.x}f, ${x.rotation.y}f, ${-x.rotation.z}f]`
			},
			Tags: `["item_holder"]`,
			// ArmorItems: `[{},{},{},{id:"${item}", Count:1b}]`,
			Invulnerable: true,
			// Invisible: true,
			NoGravity: true
		})}`
	})

	// for(let i = 0; i < 10; i++) {
	// 	let ang = new CANNON.Vec3(Math.random()*2*Math.PI, Math.random()*2*Math.PI, Math.random()*2*Math.PI);
	// 	let q = fromEuler(ang.x, ang.y, ang.z);
	// 	console.log(ang, toEuler(q))
	// }

	return []
}

function simulate_pile(bounds: [number, number], count: number, slope: [number, number, number], duration: number) {
	let world = new CANNON.World({
    gravity: new CANNON.Vec3(0,-9.8,0)
	});

	slope[0] -= Math.PI / 2;

	let groundMat = new CANNON.Material('ground');
	let itemMat = new CANNON.Material('item');
	let wallMat = new CANNON.Material('wall');

	world.addContactMaterial(new CANNON.ContactMaterial(groundMat, itemMat, {
		friction:0.5,
		restitution: 0.3
	}));

	world.addContactMaterial(new CANNON.ContactMaterial(itemMat, itemMat, {
		friction:0.4,
		restitution: 0.2
	}));

	world.addContactMaterial(new CANNON.ContactMaterial(wallMat, itemMat, {
		friction:0,
		restitution: 0
	}));

	[
		{ // ground
			mass: 0,
			quaternion: fromEuler(...slope),
			position: new CANNON.Vec3(0, 0, 0),
			material: groundMat
		},
		{
			mass: 0,
			quaternion: fromEuler(0, 0, 0),
			position: new CANNON.Vec3(0,0,0),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: fromEuler(0, Math.PI, 0),
			position: new CANNON.Vec3(0,0,bounds[1]),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: fromEuler(0, Math.PI / 2, 0),
			position: new CANNON.Vec3(0,0,0),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: fromEuler(Math.PI / 2, 0, 0),
			position: new CANNON.Vec3(bounds[0],0,0),
			material: wallMat
		}
	].forEach(b=>world.addBody(
		new CANNON.Body(
			Object.assign(
				b, 
				{shape: new CANNON.Plane()}
			)
		)
	))

	let objects = [];

	for( let i = 0; i < count; i++ ){
		objects[i] = new CANNON.Body({
			mass: 1,
			shape: new CANNON.Box(new CANNON.Vec3(s/2, s/2, s/32)),
			material: itemMat,
			// position: new CANNON.Vec3(Math.random()*(bounds[0]-s)+s/2, (i+0.5)*s/16+10, Math.random()*(bounds[1]-s)+s/2),
			// quaternion: fromEuler(- Math.PI/2, 0, 0)
			position: new CANNON.Vec3(bounds[0], i+5,bounds[1]),
			quaternion: fromEuler(2*Math.PI/count*i, 0, 0)
		})
		// objects[i].position.set()
		// console.log(objects[i].position)
	}

	objects.forEach(b=>world.addBody(b))

	console.log(`Generated scene with ${count} objects... simulating`)

	// for(let i = 0; i < tps*duration; i++) {
	// 	world.step(1/tps);
	// 	if (i%(tps*duration/10) == 0) console.log(`Simulated Second ${i/tps}`)
	// }
	// for(let i = 0; i < count; i++) {
	// 	console.log(objects[i].position, objects[i].quaternion)
	// }
	return objects.map(x=>{
		return {position:x.position, rotation: toEuler(x.quaternion).scale(180/Math.PI), quaternion:x.quaternion}
	})
}

function fromEuler(yaw: number, pitch: number, roll: number): CANNON.Quaternion {
	let qx, qy, qz, qw
  qx = Math.sin(roll/2) * Math.cos(pitch/2) * Math.cos(yaw/2) - Math.cos(roll/2) * Math.sin(pitch/2) * Math.sin(yaw/2)
  qy = Math.cos(roll/2) * Math.sin(pitch/2) * Math.cos(yaw/2) + Math.sin(roll/2) * Math.cos(pitch/2) * Math.sin(yaw/2)
  qz = Math.cos(roll/2) * Math.cos(pitch/2) * Math.sin(yaw/2) - Math.sin(roll/2) * Math.sin(pitch/2) * Math.cos(yaw/2)
  qw = Math.cos(roll/2) * Math.cos(pitch/2) * Math.cos(yaw/2) + Math.sin(roll/2) * Math.sin(pitch/2) * Math.sin(yaw/2)
  return new CANNON.Quaternion(qx, qy, qz, qw)
}

function toEuler(q: CANNON.Quaternion): CANNON.Vec3 {
  let roll
  let pitch
  let yaw
  const x = q.x
  const y = q.y
  const z = q.z
  const w = q.w

  let t0, t1, t2, t3, t4

  t0 = +2.0 * (w * x + y * z)
  t1 = +1.0 - 2.0 * (x * x + y * y)
  roll = Math.atan2(t0, t1)
  t2 = +2.0 * (w * y - z * x)
  t2 = t2 > +1.0 ? +1.0 : t2
  t2 = t2 < -1.0 ? -1.0 : t2
  pitch = Math.asin(t2)
  t3 = +2.0 * (w * z + x * y)
  t4 = +1.0 - 2.0 * (y * y + z * z)
  yaw = Math.atan2(t3, t4)
  
  return new CANNON.Vec3(yaw, pitch, roll);
}