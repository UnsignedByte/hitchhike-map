tag @a[tag=victim-of-dialogue-by-cameron, limit=1] add npc-eavesdropper
execute at @e[tag=npc-cameron, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-cameron, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cameron \"Cam\" Au-Flauge","color":"#197037","bold":true},"> ",{"text":"Whoa! How'd you find me here?"}]
execute at @e[tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/cameron/0-1 54t
tag @a remove npc-eavesdropper
