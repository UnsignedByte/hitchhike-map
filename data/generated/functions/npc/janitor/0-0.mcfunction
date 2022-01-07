tag @a[tag=victim-of-dialogue-by-janitor, limit=1] add npc-eavesdropper
execute at @e[tag=npc-janitor, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-janitor, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ivon Cummings","color":"#f2d811","bold":true},"> ",{"text":"Hey, isn't school out? What are you doing back here?"}]
execute at @e[tag=npc-janitor, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/janitor/0-1 96t
tag @a remove npc-eavesdropper
