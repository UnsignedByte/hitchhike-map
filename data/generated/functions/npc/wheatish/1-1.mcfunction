# Dialogue line #1-2: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Mr. Wheat","color":"#00ff00","bold":true},"> ",{"text":"I told you, its really good!"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]

schedule function generated:npc/wheatish/1-2 45t
