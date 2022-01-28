execute unless score @s phone-detect-id matches 0.. at @s run function generated:story/phone/addholder
scoreboard players operation #tmp phone-detect-id = @s phone-detect-id
execute at @s as @e[tag=phone-click-detect] if score @s phone-detect-id = #tmp phone-detect-id run function generated:story/phone/tpholder
