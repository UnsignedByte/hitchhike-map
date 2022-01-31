tag @a[tag=victim-of-dialogue-by-lucky, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-lucky, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-lucky, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Lucky Goldstein","color":"#3db330","bold":true},"> ",{"text":"This is the perfect hiding spot! I can't lose it!"}]
execute at @e[type=villager,tag=npc-lucky, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/lucky/0-2 52t
tag @a remove npc-eavesdropper
