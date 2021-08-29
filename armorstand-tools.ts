import * as CANNON from 'https://cdn.skypack.dev/cannon-es'
// import * as THREE from 'https://cdn.skypack.dev/three'
import { toSnbt, rawJson } from './compile-to-mcfunction.ts'
import { ItemPhysics } from './parse-yaml.ts'

const tps = 60;
// (65.0075-64.115)/2

/* 
corner: southeastern corner
item: item id
count: number of items
bounds: x and z width of area
slope: rotations of the ground plane about the x, y, and z axes (good for items on stairs, etc)
 */


export function generate_pile (
	{
		corner,
		item,
		count,
		bounds,
		duration,
		slope = [0,0,0],
		type,
		small
	}: ItemPhysics
	): string[] {
	const cornerV = new CANNON.Vec3(...corner);
	let offset = new CANNON.Vec3();
	let foffset = new CANNON.Vec3();
	let s = 0; // size of an item

	switch (type) {
		case 'head':
			offset.set(0, 0.44625 + s/2, -0.25-s/32);
			foffset.set(0, 7/16+1, 0);
			s = 0.625;
			break;
		case 'hand':
			offset.set(0, 0.44625 + s/2, -0.25-s/32);
			foffset.set(0, 7/16+1, 0);
			s = 0.625;
			break;
		default:
			return []
	}

	if (small) {
		offset.scale(0.5);
		foffset.scale(0.5);
		s*=0.5;
	}

	return simulate_pile(bounds, count, slope, duration, s).map(x=>{
		x.quaternion = new CANNON.Quaternion().setFromEuler(x.rotation.x, x.rotation.y, x.rotation.z, 'ZYX');
		x.rotation.scale(180/Math.PI, x.rotation);

		x.position.vadd(cornerV, x.position);
		let tmp = new CANNON.Quaternion(offset.x, offset.y, offset.z, 0);
		let noffset = x.quaternion.mult(tmp).mult(x.quaternion.inverse());
		x.position.vsub(new CANNON.Vec3(noffset.x, noffset.y, noffset.z), x.position); // move by offset
		x.position.vsub(foffset, x.position);

		return `summon armor_stand ${x.position.x.toFixed(8)} ${(x.position.y).toFixed(8)} ${x.position.z.toFixed(8)} ${toSnbt({
			Pose: {
				Head: `[${x.rotation.x}f, ${-x.rotation.y}f, ${-x.rotation.z}f]`
			},
			Tags: `["item_holder"]`,
			ArmorItems: `[{},{},{},{id:"${item}", Count:1b}]`,
			DisabledSlots:4144959,
			Invulnerable: true,
			Invisible: true,
			NoGravity: true,
			Small: small
		})}`
	})
}

function simulate_pile(bounds: number[], count: number, slope: number[], duration: number, s: number) {
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
		friction:0.05,
		restitution: 0.05
	}));

	[
		{ // ground
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(slope[0], slope[1], slope[2], 'XYZ'),
			position: new CANNON.Vec3(0, 0, 0),
			material: groundMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, 0, 0, 'XYZ'),
			position: new CANNON.Vec3(0,0,0),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, Math.PI, 0, 'XYZ'),
			position: new CANNON.Vec3(0,0,bounds[1]),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, Math.PI / 2, 0, 'XYZ'),
			position: new CANNON.Vec3(0,0,0),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, - Math.PI / 2, 0, 'XYZ'),
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
			position: new CANNON.Vec3(Math.random()*(bounds[0]-s)+s/2, (i+0.5)*s/16+10, Math.random()*(bounds[1]-s)+s/2),
			quaternion: new CANNON.Quaternion().setFromEuler(- Math.PI/2, 0, 0)
			// position: new CANNON.Vec3(bounds[0], i+5,bounds[1]),
			// quaternion: new CANNON.Quaternion().setFromEuler(2*Math.PI/count*i-Math.PI, 2*Math.PI/count*i-Math.PI, 2*Math.PI/count*i-Math.PI, 'YZX')
		})
		// objects[i].position.set()
		// console.log(objects[i].position)
	}

	objects.forEach(b=>world.addBody(b))

	console.log(`Generated scene with ${count} objects... simulating`)

	for(let i = 0; i < tps*duration; i++) {
		world.step(1/tps);
		if (i%(tps*duration/10) == 0) console.log(`Simulated Second ${i/tps}`)
	}
	// for(let i = 0; i < count; i++) {
	// 	console.log(objects[i].position, objects[i].quaternion)
	// }
	return objects.map(x=>{
		const t = new CANNON.Vec3();
		x.quaternion.toEuler(t, 'YZX');
		return {position:x.position, rotation: t, quaternion:x.quaternion}
	})
}

function fromEuler(yaw: number, pitch: number, roll: number): CANNON.Quaternion {


  // Abbreviations for the various angular functions
  let cy = Math.cos(yaw * 0.5);
  let sy = Math.sin(yaw * 0.5);
  let cp = Math.cos(pitch * 0.5);
  let sp = Math.sin(pitch * 0.5);
  let cr = Math.cos(roll * 0.5);
  let sr = Math.sin(roll * 0.5);

  let q = new CANNON.Quaternion();
  q.w = cr * cp * cy + sr * sp * sy;
  q.x = sr * cp * cy - cr * sp * sy;
  q.y = cr * sp * cy + sr * cp * sy;
  q.z = cr * cp * sy - sr * sp * cy;

  return q;
	// let qx, qy, qz, qw

  // qx = Math.sin(roll/2) * Math.cos(pitch/2) * Math.cos(yaw/2) - Math.cos(roll/2) * Math.sin(pitch/2) * Math.sin(yaw/2)
  // qy = Math.cos(roll/2) * Math.sin(pitch/2) * Math.cos(yaw/2) + Math.sin(roll/2) * Math.cos(pitch/2) * Math.sin(yaw/2)
  // qz = Math.cos(roll/2) * Math.cos(pitch/2) * Math.sin(yaw/2) - Math.sin(roll/2) * Math.sin(pitch/2) * Math.cos(yaw/2)
  // qw = Math.cos(roll/2) * Math.cos(pitch/2) * Math.cos(yaw/2) + Math.sin(roll/2) * Math.sin(pitch/2) * Math.sin(yaw/2)
  // return new CANNON.Quaternion(qx, qy, qz, qw)
 // let q = new THREE.Quaternion().setFromEuler(new THREE.Euler(yaw, pitch, roll, 'XYZ'));
 // return new CANNON.Quaternion(q.x, q.y, q.z, q.w);
 // return new CANNON.Quaternion().setFromEuler(yaw, pitch, roll, 'XYZ');
}

function toEuler(q: CANNON.Quaternion): CANNON.Vec3 {
  let roll
  let pitch
  let yaw
  // const x = q.x
  // const y = q.y
  // const z = q.z
  // const w = q.w

  // let t0, t1, t2, t3, t4

  // t0 = +2.0 * (w * x + y * z)
  // t1 = +1.0 - 2.0 * (x * x + y * y)
  // roll = Math.atan2(t0, t1)
  // t2 = +2.0 * (w * y - z * x)
  // t2 = t2 > +1.0 ? +1.0 : t2
  // t2 = t2 < -1.0 ? -1.0 : t2
  // pitch = Math.asin(t2)
  // t3 = +2.0 * (w * z + x * y)
  // t4 = +1.0 - 2.0 * (y * y + z * z)
  // yaw = Math.atan2(t3, t4)

  // roll (x-axis rotation)
  let sinr_cosp = 2 * (q.w * q.x + q.y * q.z);
  let cosr_cosp = 1 - 2 * (q.x * q.x + q.y * q.y);
  roll = Math.atan2(sinr_cosp, cosr_cosp);

  // pitch (y-axis rotation)
  let sinp = 2 * (q.w * q.y - q.z * q.x);
  if (Math.abs(sinp) >= 1){
    pitch = Math.sign(sinp) * Math.PI / 2; // use 90 degrees if out of range
  } else {
    pitch = Math.asin(sinp);
  }

  // yaw (z-axis rotation)
  let siny_cosp = 2 * (q.w * q.z + q.x * q.y);
  let cosy_cosp = 1 - 2 * (q.y * q.y + q.z * q.z);
  yaw = Math.atan2(siny_cosp, cosy_cosp);
  
  return new CANNON.Vec3(yaw, pitch, roll);
  // let e = new THREE.Euler().setFromRotationMatrix(new THREE.Quaternion(q.x, q.y, q.z, q.w), 'XYZ');
  // return new CANNON.Vec3(e.x, e.y, e.z)

  // let v = new CANNON.Vec3();
  // q.toEuler(v);
  // return new CANNON.Vec3(v.y, v.z, v.x);
}