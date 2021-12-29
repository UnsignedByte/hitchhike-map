scoreboard players operation #tmp piranha-id = @s piranha-id
execute as @e[type=tropical_fish,tag=lake-piranha] if score @s piranha-id = #tmp piranha-id facing entity @p eyes run tp @s ~ ~ ~ ~ ~
