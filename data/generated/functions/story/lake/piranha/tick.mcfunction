scoreboard players operation #tmp piranha-id = @s piranha-id
execute as @e[type=tropical_fish,tag=lake-piranha] if score @s piranha-id = #tmp piranha-id facing entity @p eyes run tag @s add lake-piranha-selected
tp @e[tag=lake-piranha-selected] ~ ~ ~ ~ ~
execute unless entity @e[tag=lake-piranha-selected] as @s run function hitchhike:kill
tag @e remove lake-piranha-selected
