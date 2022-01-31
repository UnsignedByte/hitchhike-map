tag @a[tag=victim-of-dialogue-by-pennyisses, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-pennyisses, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-pennyisses, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Penny Eises","color":"#d9c9ba","bold":true},"> ",{"text":"Hey, did you notice I was reading?"}]
execute at @e[type=villager,tag=npc-pennyisses, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/pennyisses/0-1 48t
tag @a remove npc-eavesdropper
