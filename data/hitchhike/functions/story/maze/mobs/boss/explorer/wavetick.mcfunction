execute if entity @e[tag=maze-mob,tag=!maze-boss,distance=..1.5] run playsound minecraft:block.bubble_column.whirlpool_inside hostile @a ~ ~ ~ 0.7 0.3
tp @e[tag=maze-mob,tag=!maze-boss,distance=..1.5] ^ ^ ^0.2

tp @s ^ ^ ^0.2

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 3 const
execute if score #tmp maze-weapon-age matches 0 at @s run function generated:story/maze/mobs/boss/explorer/render_wave

execute if score #tmp maze-weapon-age matches 0 if predicate hitchhike:onethird run playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ 0.08 0.3
execute if score #tmp maze-weapon-age matches 0 if predicate hitchhike:onetwelth run playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ 0.1 0.4
execute if score #tmp maze-weapon-age matches 0 if predicate hitchhike:onethird run playsound minecraft:block.water.ambient hostile @a ~ ~ ~ 0.4 1.6

execute if score @s maze-weapon-age matches 100.. run kill @s

scoreboard players add @s maze-weapon-age 1