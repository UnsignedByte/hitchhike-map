scoreboard players set @s idetect 0
scoreboard players operation l bitwise = _ i0detect
scoreboard players operation r bitwise = @s i0detect
function generated:bitwise/and
execute if score result bitwise matches 1.. run scoreboard players set @s idetect 1
scoreboard players operation l bitwise = _ i1detect
scoreboard players operation r bitwise = @s i1detect
function generated:bitwise/and
execute if score result bitwise matches 1.. run scoreboard players set @s idetect 1
