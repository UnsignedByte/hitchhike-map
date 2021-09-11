# Dialogue line #0-5: speak and make noise.
execute at @e[tag=npc-sean, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Sean","color":"#4fa1a7","bold":true},"> ",{"text":"I would recommend you turn it off and on again... your internet, I mean. Not my electricity."}]
execute at @e[tag=npc-sean, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:npc/sean/0-5 145t
