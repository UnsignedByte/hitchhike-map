# Dialogue line #2: speak and make noise.
execute at @e[tag=npc-sam, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> ",{"text":"Please leave."}]
execute at @e[tag=npc-sam, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:funcs/dialogue-sam-end 30t
