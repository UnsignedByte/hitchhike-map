# Dialogue line #1: speak and make noise.
execute at @e[tag=npc-sam, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> Well, this is a bit unfortunate."]
execute at @e[tag=npc-sam, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:funcs/dialogue-sam-1 50t
