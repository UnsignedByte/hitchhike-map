execute positioned 0.0 0.0 0.0 rotated as @s run summon marker ^ ^ ^1 {Tags:["rotation-storer"]}

execute store result score #rotX vars run data get entity @e[type=marker,tag=rotation-storer,limit=1] Pos[0] 1000
execute store result score #rotY vars run data get entity @e[type=marker,tag=rotation-storer,limit=1] Pos[1] 1000
execute store result score #rotZ vars run data get entity @e[type=marker,tag=rotation-storer,limit=1] Pos[2] 1000

kill @e[tag=rotation-storer]