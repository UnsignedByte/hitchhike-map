import * as CANNON from 'https://cdn.skypack.dev/cannon-es'
import { toSnbt, rawJson } from './compile-to-mcfunction.ts'

const s = 0.625; // size of an item (on head)
const tps = 60;

const neckstart = 7/16+1;
const necklength = 0.44625;
const headoffset = new CANNON.Vec3(0, necklength + s/2, -0.25+s/32);
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
		x.position.vsub(x.quaternion.vmult(headoffset), x.position); // move by offset
		return `summon armor_stand ${x.position.x.toFixed(8)} ${(x.position.y - neckstart).toFixed(8)} ${x.position.z.toFixed(8)} ${toSnbt({
			Pose: {
				Head: `[${x.rotation.x}f, ${x.rotation.y}f, ${x.rotation.z}f]`
			},
			Tags: `["item_holder"]`,
			ArmorItems: `[{},{},{},{id:"${item}", Count:1b}]`,
			Invulnerable: true,
			Invisible: true,
			NoGravity: true
		})}`
	})
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
			quaternion: new CANNON.Quaternion().setFromEuler(...slope),
			position: new CANNON.Vec3(0, 0, 0),
			material: groundMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, 0, 0),
			position: new CANNON.Vec3(0,0,0),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, Math.PI, 0),
			position: new CANNON.Vec3(0,0,bounds[1]),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, Math.PI / 2, 0),
			position: new CANNON.Vec3(0,0,0),
			material: wallMat
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, - Math.PI / 2, 0),
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
			// quaternion: new CANNON.Quaternion().setFromEuler(- Math.PI/2, 0, 0)
			position: new CANNON.Vec3(bounds[0], i+5,bounds[1]),
			quaternion: new CANNON.Quaternion().setFromEuler(0, 0, 2*Math.PI/count*i)
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
		const t = new CANNON.Vec3();
		x.quaternion.toEuler(t);
		return {position:x.position, rotation: t.scale(180/Math.PI), quaternion:x.quaternion}
	})
}

CANNON.Quaternion.prototype.toEuler = function(target: CANNON.Vec3, order: string = 'YZX'): void {
  let heading
  let attitude
  let bank
  const x = this.x
  const y = this.y
  const z = this.z
  const w = this.w

  switch (order) {
    case 'YZX':
      const sqx = x * x
	    const sqy = y * y
	    const sqz = z * z
	    heading = Math.atan2(2 * y * w - 2 * x * z, 1 - 2 * sqy - 2 * sqz) // Heading
	    attitude = Math.asin(2 * (x * y + z * w)) // attitude
	    bank = Math.atan2(2 * x * w - 2 * y * z, 1 - 2 * sqx - 2 * sqz) // bank
	    break;
    default:
      throw new Error(`Euler order ${order} not supported yet.`)
  }
  target.y = heading
  target.z = attitude as number
  target.x = bank as number
}