tag @a[tag=victim-of-dialogue-by-pennyisses, limit=1] add npc-eavesdropper
execute at @e[tag=npc-pennyisses, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-pennyisses, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Penny Eises","color":"#d9c9ba","bold":true},"> ",{"text":"Feel free to take a look."}]
execute at @e[tag=npc-pennyisses, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/pennyisses/0-end 60t
tag @a remove npc-eavesdropper
