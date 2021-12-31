tag @a[tag=victim-of-dialogue-by-eichhornchen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-eichhornchen, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-eichhornchen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Eich Hornchen","color":"#ebe34b","bold":true},"> ",{"text":"Nice hiding spot, isn't it?"}]
execute at @e[tag=npc-eichhornchen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/eichhornchen/0-1 42t
tag @a remove npc-eavesdropper
