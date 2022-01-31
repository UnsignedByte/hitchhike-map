tag @a[tag=victim-of-dialogue-by-muller, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-muller, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-muller, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Elbert Muller","color":"#608082","bold":true},"> ",{"text":"Please don't let anyone know I'm here."}]
execute at @e[type=villager,tag=npc-muller, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/muller/0-3 48t
tag @a remove npc-eavesdropper
