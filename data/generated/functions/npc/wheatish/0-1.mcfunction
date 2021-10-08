# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"A fine day for some bread... though isn't that every day?"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/wheatish/0-2 -1t
