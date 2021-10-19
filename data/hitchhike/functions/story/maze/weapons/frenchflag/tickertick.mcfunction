execute store result score #tmpx maze-weapon-age run data get entity @s Pos[0] 1000
execute store result score #tmpy maze-weapon-age run data get entity @s Pos[1] 1000
execute store result score #tmpz maze-weapon-age run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.5

execute store result score #tmpx2 maze-weapon-age run data get entity @s Pos[0] 1000
execute store result score #tmpy2 maze-weapon-age run data get entity @s Pos[1] 1000
execute store result score #tmpz2 maze-weapon-age run data get entity @s Pos[2] 1000

scoreboard players operation #tmpx2 maze-weapon-age -= #tmpx maze-weapon-age
scoreboard players operation #tmpy2 maze-weapon-age -= #tmpy maze-weapon-age
scoreboard players operation #tmpz2 maze-weapon-age -= #tmpz maze-weapon-age

execute as @e[tag=maze-mob,dx=0,dy=0,dz=0] store result entity @s Motion[0] double 0.001 run scoreboard players get #tmpx2 maze-weapon-age
execute as @e[tag=maze-mob,dx=0,dy=0,dz=0] store result entity @s Motion[1] double 0.001 run scoreboard players get #tmpy2 maze-weapon-age
execute as @e[tag=maze-mob,dx=0,dy=0,dz=0] store result entity @s Motion[2] double 0.001 run scoreboard players get #tmpz2 maze-weapon-age

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 5 const

execute if score #tmp maze-weapon-age matches 0 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1

scoreboard players add @s maze-weapon-age 1

execute unless block ^ ^ ^1 air run kill @s
kill @s[scores={maze-weapon-age=40..}]