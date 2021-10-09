data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value {}
execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.ender_pearl.throw neutral @a ~ ~ ~ 1 0.6
execute at @e[tag=npc-simon,limit=1] run summon item ~ ~1 ~ {Motion: [-0.5,0.3,0.125], PickupDelay: 20, Item: {id: "minecraft:glass_bottle", Count: 1b, tag: {Enchantments: [{}]}}}
schedule function generated:story/simon/drink-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0 10t
