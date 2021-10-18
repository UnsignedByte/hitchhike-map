tag @e[tag=thrown-item,type=armor_stand] add match-selectable
function hitchhike:thrownitem/match

execute at @s if score @s maze-weapon-age matches ..19 unless block ^ ^ ^0.75 air run scoreboard players set @s maze-weapon-age 20
execute at @s if score @s maze-weapon-age matches ..19 if entity @e[tag=maze-mob,dx=0,dy=0,dz=0] run scoreboard players set @s maze-weapon-age 20
execute at @s if score @s maze-weapon-age matches ..19 run function hitchhike:story/maze/weapons/spoon/fly

execute if score @s maze-weapon-age matches 25 run tp @s ~ ~ ~ ~ 90
execute if score @s maze-weapon-age matches 30 run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.2 0
execute at @s if score @s maze-weapon-age matches 30.. unless block ~ ~ ~-1 air run scoreboard players set @s maze-weapon-age 60
execute at @s if score @s maze-weapon-age matches 30..59 run function hitchhike:story/maze/weapons/spoon/drop

function hitchhike:thrownitem/calculateoffset

execute at @s if score @s maze-weapon-age matches 60 run function hitchhike:story/maze/weapons/spoon/land

scoreboard players add @s maze-weapon-age 1