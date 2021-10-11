tag @a[tag=victim-of-dialogue-by-billy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-billy, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-billy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Billy","color":"#ff00ff","bold":true},"> ",{"text":"Once upon a time, I stumbled across a hole."}]
execute at @e[tag=npc-billy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/billy/0-1 90t
tag @a remove npc-eavesdropper
