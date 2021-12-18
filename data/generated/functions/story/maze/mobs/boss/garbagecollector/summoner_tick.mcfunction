scoreboard players add @s maze-weapon-age 1
particle minecraft:poof ~ ~ ~ 0.2 0.5 0.2 0 10
execute if score @s maze-weapon-age matches 20.. at @s run function generated:story/maze/mobs/summon/garbagecollector_minion
execute if score @s maze-weapon-age matches 20.. run playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1.3
kill @s[scores={maze-weapon-age=20..}]
