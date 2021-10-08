# Dialogue line #0-7: speak and make noise.
execute at @e[tag=npc-cameron, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Cameron \"Cam\" Au-Flauge","color":"#197037","bold":true},"> ",{"text":"I wonder if you'll accidentally stumble across anyone else."}]
execute at @e[tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/cameron/0-7 -1t
