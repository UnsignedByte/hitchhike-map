function hitchhike:story/intro/reset
function hitchhike:story/sawyer/reset
function hitchhike:story/simon/reset
function hitchhike:story/maze/reset

kill @e[tag=falling-block-display]
summon falling_block 964.75 625 197.5 {BlockState:{Name:"minecraft:smooth_stone_slab",Properties:{type:"bottom"}},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}
summon area_effect_cloud 964.625 74.125 197.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["falling-block-display","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}]}