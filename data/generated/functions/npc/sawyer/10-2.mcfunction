tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #10-3: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Welcome back to reality! I hope you enjoyed your stay."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
function hitchhike:story/maze/disable
tp @a 952 70 -1
spawnpoint @a 1007 59 59
schedule function generated:npc/sawyer/10-3 114t
tag @a remove npc-eavesdropper
