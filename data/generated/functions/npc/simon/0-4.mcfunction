# Dialogue line #0-5: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"You don't look at all prepared to go up that mountain, and you can bet I won't be letting you through MY property unless you are properly prepared."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
function generated:quests/picnic-start
function generated:quests/leather-start
function generated:quests/diet-start
function generated:quests/preparedness-start
schedule function generated:npc/simon/0-5 315t
