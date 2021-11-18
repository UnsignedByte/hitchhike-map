tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #5-2: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Be careful, corrupted areas can be a little dangerous. Hopefully my tools can help you out, though."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/sawyer/5-2 192t
tag @a remove npc-eavesdropper
