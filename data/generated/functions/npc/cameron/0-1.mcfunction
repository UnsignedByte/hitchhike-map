# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-cameron, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Cameron \"Cam\" Au-Flauge","color":"#197037","bold":true},"> ",{"text":"Darn, I thought I had the perfect hiding spot... I guess I've lost then. I can't believe I didn't see you coming up here."}]
execute at @e[tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] 100
schedule function generated:npc/cameron/0-2 252t
