scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 5 const

execute if score #tmp maze-weapon-age matches 0 run particle crit ~ ~ ~ 0 0 0 0 1

tp @s ^ ^ ^0.5

tag @e[tag=thrown-item,type=armor_stand] add match-selectable

function hitchhike:thrownitem/match
function hitchhike:thrownitem/calculateoffset