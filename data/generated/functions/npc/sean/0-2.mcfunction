# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-sean, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Sean","color":"#4fa1a7","bold":true},"> ",{"text":"Hmm, the internet is down..."}]
execute at @e[tag=npc-sean, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sean/0-3 30t
