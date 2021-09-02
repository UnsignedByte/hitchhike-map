import * as CANNON from 'https://cdn.skypack.dev/cannon-es'
// import * as THREE from 'https://cdn.skypack.dev/three'
import { toSnbt, rawJson } from './compile-to-mcfunction.ts'
import { ItemPhysics } from './parse-yaml.ts'
import { Lines, schedule } from './main.ts'

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
		spawnrange,
		duration,
		slope = [0,0,0],
		ground = [],
		type,
		small,
		walls
	}: ItemPhysics
	): string[] {
	const cornerV = new CANNON.Vec3(...corner);
	let offset = new CANNON.Vec3();
	let foffset = new CANNON.Vec3();
	let s = 0; // size of an item

	switch (type) {
		case 'head':
			s = 0.625;
			let necklength = 7/16+1/128;
			offset.set(0, necklength + s/2, -0.25-s/32);
			foffset.set(0, 7/16+1, 0);

			if (small) {
				s*=7/10;
				offset.set(0, necklength*3/4 + s/2, -0.25*3/4-s/32);
				foffset.set(0, (13/32+1)/2, 0);
			}
			break;
		case 'hand':
			s = 0.625;
			offset.set(0, 0.44625 + s/2, -0.25-s/32);
			foffset.set(0, 7/16+1, 0);

			if (small) {
				offset.scale(0.5);
				foffset.scale(0.5);
				s*=0.5;
			}
			break;
		default:
			return []
	}

	return simulate_pile(bounds, spawnrange, count, slope, ground, duration, s, walls).map(x=>{
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
			Silent: true,
			Marker: true,
			Small: small
		})}`
	})
}

function simulate_pile(bounds: number[], spawnrange: number[], count: number, slope: number[], ground: number[][], duration: number, s: number, walls: boolean = true) {
	let world = new CANNON.World({
    gravity: new CANNON.Vec3(0,-9.8,0)
	});

	slope[0] -= Math.PI / 2;

	let groundMat = new CANNON.Material('ground');
	let itemMat = new CANNON.Material('item');
	let wallMat = new CANNON.Material('wall');

	world.addContactMaterial(new CANNON.ContactMaterial(groundMat, itemMat, {
		friction:0.7,
		restitution: 0.0
	}));

	world.addContactMaterial(new CANNON.ContactMaterial(itemMat, itemMat, {
		friction:0.6,
		restitution: 0.1
	}));

	world.addContactMaterial(new CANNON.ContactMaterial(wallMat, itemMat, {
		friction:0.05,
		restitution: 0.05
	}));

	let groundBody = new CANNON.Body({
		material:groundMat,
		type: CANNON.Body.STATIC,
		position: new CANNON.Vec3(0, 0, 0)
	});

	// console.log(ground);

	ground.map((x, i)=>{
		x.map((z, j) => {
			// console.log(j/2+0.25, ground[i][j]/4, i/2+0.25);
			if (ground[i][j] <= 0 || i >= 2*bounds[1] || j >= 2*bounds[0]) return;
			groundBody.addShape(new CANNON.Box(new CANNON.Vec3(0.25, ground[i][j]/4, 0.25)),
													new CANNON.Vec3(j/2+0.25, ground[i][j]/4, i/2+0.25))
		})
	});

	world.addBody(groundBody);

	[
		{ // ground
			mass: 0,
			quaternion: new CANNON.Quaternion().setFromEuler(slope[0], slope[1], slope[2], 'XYZ'),
			position: new CANNON.Vec3(0, 0, 0),
			material: groundMat
		},
		...(
			walls ? 
			[
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
			] : [])
	].forEach(b=>world.addBody(
		new CANNON.Body(
			Object.assign(
				b, 
				{shape: new CANNON.Plane(), type: CANNON.Body.STATIC}
			)
		)
	))

	let objects = [];

	for( let i = 0; i < count; i++ ){
		objects[i] = new CANNON.Body({
			mass: 1,
			shape: new CANNON.Box(new CANNON.Vec3(s/2, s/2, s/32)),
			material: itemMat,
			position: new CANNON.Vec3(
				Math.random()*(bounds[0]-spawnrange[2]-spawnrange[0]) + spawnrange[0],
				(i+0.5)*s/16+10,
				Math.random()*(bounds[1]-spawnrange[3]-spawnrange[1]) + spawnrange[1]
			),
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
	return objects.filter(x=>(x.position.x <= bounds[0] && x.position.x >= 0 && x.position.z <= bounds[1] && x.position.z >= 0)).map(x=>{
		const t = new CANNON.Vec3();
		x.quaternion.toEuler(t, 'YZX');
		return {position:x.position, rotation: t, quaternion:x.quaternion};
	})
}