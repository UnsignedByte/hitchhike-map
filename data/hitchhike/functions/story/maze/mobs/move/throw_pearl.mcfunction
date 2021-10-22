execute anchored eyes run playsound minecraft:entity.ender_pearl.throw neutral @a ~ ~ ~ 1 1

execute anchored eyes run summon ender_pearl ^ ^ ^1 {Tags:["maze-mob-pearl-init","maze-mob","maze-pearl"],Item:{id:"minecraft:nether_star",Count:1b},NoGravity:1}

execute as @s run function hitchhike:storerot

kill @e[type=marker,tag=maze-mob-pearl-marker]

execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[0] double 0.0003 run scoreboard players get #rotX vars
execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[1] double 0.0003 run scoreboard players get #rotY vars
execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[2] double 0.0003 run scoreboard players get #rotZ vars

data modify entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Owner set from entity @s UUID

tag @e[type=ender_pearl] remove maze-mob-pearl-init