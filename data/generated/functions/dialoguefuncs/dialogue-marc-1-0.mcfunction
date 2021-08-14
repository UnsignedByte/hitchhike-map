# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"Please stop."}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:dialoguefuncs/dialogue-marc-1-1 20t
