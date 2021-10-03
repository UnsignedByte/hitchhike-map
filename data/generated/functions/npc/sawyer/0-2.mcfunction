# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Hmm, the internet is down..."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sawyer/0-3 30t
