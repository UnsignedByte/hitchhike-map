scoreboard players set hurm-done vars 0

#> Reset doors

fill 1078 125 350 1078 126 350 air
setblock 1078 125 350 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock 1078 126 350 minecraft:dark_oak_door[facing=north,half=upper,hinge=left,open=false,powered=false]

fill 1078 125 359 1078 126 359 air
setblock 1078 126 359 minecraft:dark_oak_door[facing=south,half=upper,hinge=right,open=false,powered=false]
setblock 1078 125 359 minecraft:dark_oak_door[facing=south,half=lower,hinge=right,open=false,powered=false]

scoreboard players set start story-hurm 0
function hitchhike:story/hurm/await_start

kill @e[tag=hurm-item]

scoreboard players set -caught hurm-fish-caught 0

# Reset fishing rods
data modify block 1071 128 348 Items set from block 1071 122 348 Items

#> Reset Tree Area
scoreboard players set @a hurm-chopped 0
scoreboard players set -chopped hurm-chopped 0
function generated:story/hurm/reset_trees

# Reset chest
data modify block 1184 124 286 Items set from block 1184 121 286 Items

#> Reset miner
kill @e[tag=hurm-mine-stand]
summon armor_stand 1239 115 314 {Invulnerable:1b,ShowArms:1b,Tags:["hurm-mine-stand"],DisabledSlots:4144703,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Rusty Pickaxe","color":"#753F2F"}',Lore:['{"text":"Looks like its","color":"gray"}','{"text":"about to fall apart.","color":"gray"}']},HideFlags:11,Damage:249,hurmpick:1b,Enchantments:[{id:"minecraft:efficiency",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;813859363,-997701657,-1260743161,1914388723],Slot:"mainhand"}]}},{}],ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{display:{color:5060903}}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:3159657}}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:4668985}}},{id:'minecraft:iron_helmet',Count:1b,tag:{Enchantments:[{}]}}]}

function generated:story/hurm/reset_coal

execute at @e[tag=hurm-mine-coal] run setblock ~ ~ ~ coal_ore

scoreboard players set -mined hurm-mined 0

#> Reset campfire

setblock 1102 125 366 air

execute as @e[tag=fireplace-blocker] run function hitchhike:kill
summon slime 1086 124.5 355 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1086 124.5 354 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1086 124.5 353 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1011 64.5 65 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1012 64.5 65 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1013 64.5 65 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 975 65.5 37 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 965 65 76 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 951 65 70 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1069 111.4 376 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:10,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1065 111.4 376 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:10,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
summon slime 1061 111.4 376 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:10,Team:"collisionless",Tags:["fireplace-blocker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
team join collisionless @e[tag=fireplace-blocker]
