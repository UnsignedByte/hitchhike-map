# Dialogue line #2-8: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Anyways, it's right here in this drawer. Take that card and get it fixed up, and once I can get the map in your hands you can go right on up the mountain."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] 100
schedule function generated:npc/simon/2-08 308t
