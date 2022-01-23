tag @a[tag=victim-of-dialogue-by-duarteeisenhower, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-duarteeisenhower, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-duarteeisenhower, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Art Eisenhower","color":"#edc085","bold":true},"> ",{"text":"Weren't you tired just a couple minutes ago?"}]
execute at @e[type=villager,tag=npc-duarteeisenhower, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/duarteeisenhower/0-3 96t
tag @a remove npc-eavesdropper
