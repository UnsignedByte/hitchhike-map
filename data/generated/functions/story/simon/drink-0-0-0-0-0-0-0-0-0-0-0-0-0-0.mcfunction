data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value {id: "minecraft:glass_bottle", Count: 1b, tag: {Enchantments: [{}]}}
execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 0.95
schedule function generated:story/simon/drink-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0 15t
