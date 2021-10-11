tag @a[tag=victim-of-dialogue-by-marc, limit=1] add npc-eavesdropper
execute at @e[tag=npc-marc, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"GOODBYE, ","color":"red","bold":true},{"selector":"@a[tag=victim-of-dialogue-by-marc, limit=1]","color":"dark_red","bold":true,"italic":true}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/marc/0-end 18t
tag @a remove npc-eavesdropper
