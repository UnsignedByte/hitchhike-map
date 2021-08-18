# Dialogue line #1-3: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"Just go try it, I'm sure you'll like it."}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:npc/wheatish/1-end 55t
