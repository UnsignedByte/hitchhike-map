tag @a[tag=victim-of-dialogue-by-mikepound, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-mikepound, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-mikepound, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mike Pound","color":"#527536","bold":true},"> ",{"text":"Not slow at all, if I do say so myself."}]
execute at @e[type=villager,tag=npc-mikepound, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/mikepound/0-end 60t
tag @a remove npc-eavesdropper
