tag @a[tag=victim-of-dialogue-by-giffy, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-giffy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[type=villager,tag=npc-giffy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Johnny Elton","color":"#86943a","bold":true},"> ",{"text":"Anybody who searches in here must be real sicko to go into a children's bathroom."}]
execute at @e[type=villager,tag=npc-giffy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/giffy/0-end 150t
tag @a remove npc-eavesdropper
