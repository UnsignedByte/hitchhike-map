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
 */


export function generate_pile (
	{
		corner,
		item,
		count,
		bounds,
		spawnrange,
		duration,
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

	return simulate_pile(bounds, spawnrange, count, ground, duration, s, walls).map(x=>{
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

function simulate_pile(bounds: number[], spawnrange: number[], count: number, ground: number[][], duration: number, s: number, walls: boolean = true) {
	let world = new CANNON.World({
    gravity: new CANNON.Vec3(0,-9.8,0)
	});

	let groundMat = new CANNON.Material('ground');
	let itemMat = new CANNON.Material('item');
	let wallMat = new CANNON.Material('wall');

	world.addContactMaterial(new CANNON.ContactMaterial(groundMat, itemMat, {
		friction:0.7,
		restitution: 0.2
	}));

	world.addContactMaterial(new CANNON.ContactMaterial(itemMat, itemMat, {
		friction:0.6,
		restitution: 0.3
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

	groundBody.addShape(new CANNON.Box(new CANNON.Vec3(bounds[0]/2, 0.5, bounds[1]/2)),
																		 new CANNON.Vec3(bounds[0]/2, -0.5, bounds[1]/2));

	ground.map((x, i)=>{
		x.map((z, j) => {
			// console.log(j/2+0.25, ground[i][j]/4, i/2+0.25);
			if (ground[i][j] <= 0 || i >= 2*bounds[1] || j >= 2*bounds[0]) return;
			groundBody.addShape(new CANNON.Box(new CANNON.Vec3(0.25, ground[i][j]/4, 0.25)),
													new CANNON.Vec3(j/2+0.25, ground[i][j]/4, i/2+0.25))
		})
	});

	world.addBody(groundBody);

	if (walls) {
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
		].forEach(b=>world.addBody(
			new CANNON.Body(
				Object.assign(
					b, 
					{shape: new CANNON.Plane(), type: CANNON.Body.STATIC}
				)
			)
		))
	}

	let objects = [];

	function heightAt(x: number, z: number) {
		let gz = ground[z] || [];
		return gz[x]/2 || 0;
	}

	function randPos() {
		let ret = new CANNON.Vec3(
								Math.random()*(bounds[0]-spawnrange[2]-spawnrange[0]-s) + spawnrange[0] + s/2,
								0,
								Math.random()*(bounds[1]-spawnrange[3]-spawnrange[1]-s) + spawnrange[1] + s/2
							);

		let th = 0;
		let xc = Math.floor(ret.x*2), zc = Math.floor(ret.z*2);

		for(let i = 0; i < 9; i++) {
			th = Math.max(th, heightAt((i % 3 - 1) * s/2, (Math.floor(i/3) % 3 - 1) * s/2));
		}

		ret.y = th + s/32 + 1 + Math.random()*0.5;
		return ret;
	}

	for( let i = 0; i < count; i++ ){
		objects[i] = new CANNON.Body({
			mass: 1,
			shape: new CANNON.Box(new CANNON.Vec3(s/2, s/2, s/32)),
			material: itemMat,
			position: randPos(),
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
		objects.forEach(x=>(x.position.y < 0 && world.removeBody(x)));
		objects = objects.filter(x=>(x.position.y >= 0));

		if (i%(tps*duration/10) == 0) console.log(`Simulated Second ${i/tps} with ${objects.length} items and ${world.bodies.length} elements.`)
	}
	// for(let i = 0; i < count; i++) {
	// 	console.log(objects[i].position, objects[i].quaternion)
	// }
	// x.position.x <= bounds[0] && x.position.x >= 0 && x.position.z <= bounds[1] && x.position.z >= 0
	return objects.map(x=>{
		const t = new CANNON.Vec3();
		x.quaternion.toEuler(t, 'YZX');
		return {position:x.position, rotation: t, quaternion:x.quaternion};
	})
}