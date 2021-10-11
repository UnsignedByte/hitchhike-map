tag @a[tag=victim-of-dialogue-by-billy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-billy, limit=1] run tag @a[distance=..50 add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-billy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Billy","color":"#ff00ff","bold":true},"> ",{"text":"Honestly, I have no idea how I didn't fall in."}]
execute at @e[tag=npc-billy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/billy/0-end 84t
tag @a remove npc-eavesdropper
