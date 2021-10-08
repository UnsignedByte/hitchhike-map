# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"I've heard the bread at safeway is mighty tasty, "},{"text":"go try some","color":"light_purple","italic":true},{"text":"!"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100
function generated:quests/bread-start
schedule function generated:npc/wheatish/0-end -1t
