tag @a[tag=victim-of-dialogue-by-fronkobognole, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fronkobognole, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-fronkobognole, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Fronk Obognole","bold":true},"> ",{"text":"Oh, "},{"text":"heh heh...","italic":true},{"text":" you must have caught me deep in the middle of reading."}]
execute at @e[tag=npc-fronkobognole, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fronkobognole/0-1 126t
tag @a remove npc-eavesdropper
