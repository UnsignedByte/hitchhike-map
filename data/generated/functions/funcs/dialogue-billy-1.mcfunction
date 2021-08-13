# Dialogue line #2: speak and make noise.
execute at @e[tag=npc-billy, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Billy","color":"#ff00ff","bold":true},"> ",{"text":"Honestly, I have no idea how I didn't fall in."}]
execute at @e[tag=npc-billy, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:funcs/dialogue-billy-end 70t
