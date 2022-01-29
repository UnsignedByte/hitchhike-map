tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #7-9: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Here you go, I've even printed out the map for you. Pick it up on the left and make sure you take a good look at it before you go up."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
summon item 964.5 75.5 197.5 {Item:{Count: 1b, id: "minecraft:filled_map", tag: {display: {Name: '{"text":"Mountain Trail Map","color":"#25cc8c","bold":true}', Lore: ['{"text":"A Map.","color":"gray"}']}, Enchantments: [{}], map: 388}}}
playsound minecraft:block.piston.contract neutral @a 964.5 75.5 197.5
tag @e[type=villager,tag=npc-simon, limit=1] remove npc-unface
schedule function generated:npc/simon/7-09 282t
tag @a remove npc-eavesdropper
