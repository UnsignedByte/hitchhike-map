# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-breadboy, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Mr. Wheat","color":"#00ff00","bold":true},"> ",{"text":"Hey! It sure is a LOAF-ly day today, isn't it?"}]
execute at @e[tag=npc-breadboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]

schedule function generated:npc/breadboy/0-1 65t
