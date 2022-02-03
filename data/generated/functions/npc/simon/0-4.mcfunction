tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #0-5: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#6bdfc3","bold":true},"> ",{"text":"You don't look at all prepared for the elements, and I don't need more of your type showing up when you end up needing help on the mountain."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set @a foodGoal 12
function generated:quests/picnic-start
function generated:quests/leather-start
function generated:quests/diet-start
function generated:quests/preparedness-start
schedule function generated:npc/simon/0-5 176t
tag @a remove npc-eavesdropper
