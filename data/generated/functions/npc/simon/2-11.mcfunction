# Dialogue line #2-12: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Freeloaders, I say, FREELOADERS. That's what you are. I won't stand for it. I just want a drink! It's the LEAST you could do."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/simon/2-12 222t
