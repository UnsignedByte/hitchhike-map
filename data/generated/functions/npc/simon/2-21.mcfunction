tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-22: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Here, I'll even give you some of my own money to buy it with. This is probably more than enough."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-simon, limit=1] minecraft:netherite_ingot{ismoney: 1b, display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BCK"}']}} 1
give @a[tag=victim-of-dialogue-by-simon, limit=1] minecraft:iron_ingot{ismoney: 1b, display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BCK"}']}} 2
schedule function generated:npc/simon/2-22 116t
tag @a remove npc-eavesdropper
