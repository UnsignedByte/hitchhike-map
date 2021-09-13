# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"Anyways, you should get on with your daily whole wheat goodness!"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/wheatish/0-3 100t
