# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"GOODBYE, ","color":"red","bold":true},{"selector":"@a[tag=victim-of-dialogue-by-marc, limit=1]","color":"dark_red","bold":true,"italic":true}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a 100
schedule function generated:npc/marc/0-end 21t
