tag @a[tag=victim-of-dialogue-by-erenpan, limit=1] add npc-eavesdropper
execute at @e[tag=npc-erenpan, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-erenpan, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Eren Pan","bold":true},"> ",{"text":"Do I know you?"}]
execute at @e[tag=npc-erenpan, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/erenpan/0-2 30t
tag @a remove npc-eavesdropper
