tag @a[tag=victim-of-dialogue-by-wheatish, limit=1] add npc-eavesdropper
execute at @e[tag=npc-wheatish, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"I've heard the bread at safeway is mighty tasty, "},{"text":"go try some","color":"light_purple","italic":true},{"text":"!"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
function generated:quests/bread-start
schedule function generated:npc/wheatish/0-end 102t
tag @a remove npc-eavesdropper
