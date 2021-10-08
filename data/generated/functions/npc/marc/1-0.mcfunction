# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"Please stop."}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/marc/1-1 -1t
