tag @a[tag=victim-of-dialogue-by-marc, limit=1] add npc-eavesdropper
execute at @e[tag=npc-marc, limit=1] run tag @a[distance=..50 add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"Please stop."}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/marc/1-1 24t
tag @a remove npc-eavesdropper
