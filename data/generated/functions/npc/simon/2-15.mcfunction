tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #2-16: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"... And while you're at it, get me some water. Not just any water: I want "},{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true},{"text":"."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
scoreboard players set -lacroix story-simon 0
function generated:quests/lacroix-start
schedule function generated:npc/simon/2-16 168t
tag @a remove npc-eavesdropper
