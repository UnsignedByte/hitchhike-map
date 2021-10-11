tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #0-5: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"You don't look at all prepared to go up that mountain, and you can bet I won't be letting you through MY property until you are."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
function generated:quests/picnic-start
function generated:quests/leather-start
function generated:quests/diet-start
function generated:quests/preparedness-start
schedule function generated:npc/simon/0-5 240t
tag @a remove npc-eavesdropper
