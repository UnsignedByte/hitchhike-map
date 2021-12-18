scoreboard players add @s maze-weapon-age 1
execute if score @s maze-weapon-age matches 40.. run tp @e[tag=maze-mob,distance=..5,tag=!maze-boss] @s
execute if score @s maze-weapon-age matches 40.. run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.8
execute if score @s maze-weapon-age matches 40.. run kill @s
