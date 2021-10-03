# Dialogue line #0-7: speak and make noise.
execute at @e[tag=npc-cameron, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Cameron \"Cam\" Au-Flauge","color":"#197037","bold":true},"> ",{"text":"If you happen to stumble across anyone else, tell them Cam found them so I can win!"}]
execute at @e[tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/cameron/0-7 200t
