tag @e remove match-uuid-select

execute as @e run function hitchhike:storeuuid

execute as @e if score @s UUID1 = #CMP UUID1 if score @s UUID2 = #CMP UUID2 if score @s UUID3 = #CMP UUID3 if score @s UUID4 = #CMP UUID4 run tag @s add match-uuid-select