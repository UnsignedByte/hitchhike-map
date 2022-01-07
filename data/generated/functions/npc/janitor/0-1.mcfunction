tag @a[tag=victim-of-dialogue-by-janitor, limit=1] add npc-eavesdropper
execute at @e[tag=npc-janitor, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-janitor, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ivon Cummings","color":"#f2d811","bold":true},"> ",{"text":"I'm trying to do my job here, please stop bothering me."}]
execute at @e[tag=npc-janitor, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/janitor/0-2 90t
tag @a remove npc-eavesdropper
