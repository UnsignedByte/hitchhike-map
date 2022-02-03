tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#6bdfc3","bold":true},"> ",{"text":"Get off my land, plebeian! I'll call the police on you if I have to."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set -held story-simon 0
kill @e[tag=simon-holder]
tp @e[type=villager,tag=npc-simon, limit=1] 912.00 64 193.50 43 4
schedule function generated:npc/simon/0-3 84t
tag @a remove npc-eavesdropper
