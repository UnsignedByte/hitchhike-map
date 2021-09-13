# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"You still haven't had the bread?"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/wheatish/1-1 45t
