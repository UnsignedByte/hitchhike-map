data modify entity @e[tag=npc-hurm,limit=1] HandItems[0] set value {}
execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 0.95
execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5
schedule function generated:story/hurm/eat_fish-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0 15t
