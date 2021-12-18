particle minecraft:block barrier ~ ~ ~ 0 0 0 0 10
tp @s ^ ^ ^0.5
scoreboard players add @s maze-weapon-age 1
scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 10 const
execute if score #tmp maze-weapon-age matches 0 run tp @s ^ ^ ^-5
execute if score #tmp maze-weapon-age matches 0 if score @s maze-weapon-age matches 0..9 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 1 0.3
execute if score #tmp maze-weapon-age matches 0 if score @s maze-weapon-age matches 10..19 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 1 0.6
execute if score #tmp maze-weapon-age matches 0 if score @s maze-weapon-age matches 20..29 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 1 0.9
execute if score #tmp maze-weapon-age matches 0 if score @s maze-weapon-age matches 30..39 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 1 1.2
execute if score @s maze-weapon-age matches 40.. run kill @s
