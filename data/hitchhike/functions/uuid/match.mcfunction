tag @e remove match-uuid-select

execute as @e unless entity @s[scores={UUID1=-2147483648..,UUID2=-2147483648..,UUID3=-2147483648..,UUID4=-2147483648..}] run function hitchhike:storeuuid

execute as @e if score @s UUID0 = #CMP UUID0 if score @s UUID1 = #CMP UUID1 if score @s UUID2 = #CMP UUID2 if score @s UUID3 = #CMP UUID3 run tag @s add match-uuid-select