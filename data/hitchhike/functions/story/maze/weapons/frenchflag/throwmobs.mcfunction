execute store result entity @s Motion[0] double 0.003 run scoreboard players get #tmpx2 maze-weapon-age
execute store result entity @s Motion[1] double 0.003 run scoreboard players get #tmpy2 maze-weapon-age
execute store result entity @s Motion[2] double 0.003 run scoreboard players get #tmpz2 maze-weapon-age

execute store result score #tmp maze-weapon-age run data get entity @s FallDistance 1000
scoreboard players add #tmp maze-weapon-age 500
execute store result entity @s FallDistance float 0.001 run scoreboard players get #tmp maze-weapon-age

effect give @s minecraft:wither 2 2 true