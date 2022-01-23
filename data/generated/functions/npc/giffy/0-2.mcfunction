tag @a[tag=victim-of-dialogue-by-giffy, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-giffy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-giffy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Johnny Elton","color":"#86943a","bold":true},"> ",{"text":"What an ingenious plan..."}]
execute at @e[type=villager,tag=npc-giffy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/giffy/0-3 48t
tag @a remove npc-eavesdropper
