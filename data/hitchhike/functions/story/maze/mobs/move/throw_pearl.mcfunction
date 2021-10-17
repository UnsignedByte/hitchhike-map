execute anchored eyes run playsound minecraft:entity.ender_pearl.throw neutral @a ~ ~ ~ 1 1

execute anchored eyes run summon ender_pearl ^ ^ ^1 {Tags:["maze-mob-pearl-init","maze-mob"],NoGravity:1}

execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["maze-mob-pearl-marker"]}

execute store result score _thisX maze-mob-phase run data get entity @e[type=marker,tag=maze-mob-pearl-marker,limit=1] Pos[0] 1000
execute store result score _thisY maze-mob-phase run data get entity @e[type=marker,tag=maze-mob-pearl-marker,limit=1] Pos[1] 1000
execute store result score _thisZ maze-mob-phase run data get entity @e[type=marker,tag=maze-mob-pearl-marker,limit=1] Pos[2] 1000

kill @e[type=marker,tag=maze-mob-pearl-marker]

execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[0] double 0.001 run scoreboard players get _thisX maze-mob-phase
execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[1] double 0.001 run scoreboard players get _thisY maze-mob-phase
execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[2] double 0.001 run scoreboard players get _thisZ maze-mob-phase

data modify entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Owner set from entity @s UUID

tag @e[type=ender_pearl] remove maze-mob-pearl-init