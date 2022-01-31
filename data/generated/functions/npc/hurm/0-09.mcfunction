tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-10: speak and make noise.
execute at @e[type=villager,tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Herb Schmitt","color":"#183aab","bold":true},"> ",{"text":"How about this: to prove yer up to snuff, why don't ya catch and cook me some good ol' fish to eat?"}]
execute at @e[type=villager,tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set -caught hurm-fish-caught 0
function generated:quests/campfire-start
function generated:quests/grillfish-start
schedule function generated:npc/hurm/0-10 112t
tag @a remove npc-eavesdropper
