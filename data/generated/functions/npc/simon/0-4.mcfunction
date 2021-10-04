# Dialogue line #0-5: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Remember, you better not come back until you are truly prepared."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/simon/0-end 147t
