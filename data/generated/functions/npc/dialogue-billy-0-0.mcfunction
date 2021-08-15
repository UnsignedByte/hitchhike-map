# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-billy, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Billy","color":"#ff00ff","bold":true},"> ",{"text":"Once upon a time, I stumbled across a hole."}]
execute at @e[tag=npc-billy, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:npc/dialogue-billy-0-1 75t
