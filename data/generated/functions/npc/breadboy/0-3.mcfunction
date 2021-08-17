# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-breadboy, limit=1] run tellraw @a ["<",{"text":"Mr. Wheat","color":"#00ff00","bold":true},"> ",{"text":"The bread at safeway is mighty tasty,"},{"text":"go try some","color":"light_purple","italic":true},{"text":"!"}]
execute at @e[tag=npc-breadboy, limit=1] run playsound minecraft:entity.villager.ambient player @a
function generated:quests/bread-start
schedule function generated:npc/breadboy-0-end 65t
