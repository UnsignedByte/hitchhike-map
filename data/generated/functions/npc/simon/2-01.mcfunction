# Dialogue line #2-2: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"I was busy admiring my "},{"text":"1997 Limited Edition Honda Civic","color":"dark_red","bold":true},{"text":". 17 million Bov by the way. I know, you must be wishing you had a car this nice."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/simon/2-02 234t
