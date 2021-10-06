# Dialogue line #2-21: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Here, I'll even give you some money to buy it with. This is probably more than enough."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-simon, limit=1] minecraft:netherite_ingot{display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BOV"}']}} 1
give @a[tag=victim-of-dialogue-by-simon, limit=1] minecraft:iron_ingot{display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BOV"}']}} 2
schedule function generated:npc/simon/2-21 162t
