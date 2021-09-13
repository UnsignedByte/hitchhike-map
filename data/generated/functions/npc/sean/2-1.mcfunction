# Dialogue line #2-2: speak and make noise.
execute at @e[tag=npc-sean, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Sean","color":"#4fa1a7","bold":true},"> ",{"text":"The mountain is the unmistakeable mass toward the south, if you are having trouble locating it."}]
execute at @e[tag=npc-sean, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sean/2-2 165t
