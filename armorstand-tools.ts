import * as CANNON from 'https://cdn.skypack.dev/cannon-es'
import { toSnbt, rawJson } from './compile-to-mcfunction.ts'

const s = 0.625; // size of an item (on head)
const tps = 60;
const duration = 60; // one minute

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
export function generate_pile(corner: [number, number, number], item: string, count: number, bounds: [number, number], slope: [number, number, number] = [-Math.PI / 2,0,0]) {
	const cornerV = new CANNON.Vec3(...corner);
	return simulate_pile(bounds, count, slope).map(x=>{
		x.position.vadd(cornerV, x.position);
		x.position.vsub(x.quaternion.vmult(headoffset), x.position); // move by offset
		return `summon armor_stand ${x.position.x} ${x.position.y - neckstart} ${x.position.z} ${toSnbt({
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

function simulate_pile(bounds: [number, number], count: number, slope: [number, number, number]) {
	let world = new CANNON.World({
    gravity: new CANNON.Vec3(0,-9.8,0)
	});


	[
		{ // ground
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(...slope),
			position: new CANNON.Vec3(0, 0, 0)
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, 0, 0),
			position: new CANNON.Vec3(0,0,0)
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, Math.PI, 0),
			position: new CANNON.Vec3(0,0,bounds[1])
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, Math.PI / 2, 0),
			position: new CANNON.Vec3(0,0,0)
		},
		{
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(0, - Math.PI / 2, 0),
			position: new CANNON.Vec3(bounds[0],0,0)
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
			position: new CANNON.Vec3(Math.random()*bounds[0], Math.random()*5+3,Math.random()*bounds[1])
			// position: new CANNON.Vec3(bounds[0]/2, i+5,bounds[1]/2),
			// quaternion: new CANNON.Quaternion().setFromEuler(2*Math.PI/count*i, 0, 0)
		})
		// objects[i].position.set()
		// console.log(objects[i].position)
	}

	objects.forEach(b=>world.addBody(b))

	console.log(`Generated scene with ${count} objects... simulating`)

	for(let i = 0; i < tps*duration; i++) {
		world.step(1/tps);
		if (i%tps == 0) console.log(`Simulated second ${i/tps}`)
	}
	// for(let i = 0; i < count; i++) {
	// 	console.log(objects[i].position, objects[i].quaternion)
	// }
	return objects.map(x=>{
		const t = new CANNON.Vec3();
		x.quaternion.toEuler(t);
		return {position:x.position, rotation: t.scale(180/Math.PI), quaternion:x.quaternion}
	})
}