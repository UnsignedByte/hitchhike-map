# Dialogue line #2: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"GOODBYE,","color":"red","bold":true},{"selector":"select.player","color":"dark_red","bold":true,"italic":true}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a
schedule function generated:funcs/dialogue-marc-end 15t
