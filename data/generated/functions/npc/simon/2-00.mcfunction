# Dialogue line #2-1: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"I see you're pretty determined to get up this mountain, huh."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] 100
schedule function generated:npc/simon/2-01 140t
