# Dialogue line #2-4: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"I wouldn't mind if you topped something other than the mountain though..."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sawyer/2-4 110t
