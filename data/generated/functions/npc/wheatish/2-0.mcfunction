# Dialogue line #2-1: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"I see you enjoyed the bread."}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:npc/wheatish/2-1 55t
