# Dialogue line #1: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> Go away!"]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:funcs/dialogue-marc-end 15t
