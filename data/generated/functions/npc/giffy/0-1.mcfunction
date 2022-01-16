tag @a[tag=victim-of-dialogue-by-giffy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-giffy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-giffy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Johnny Elton","color":"#86943a","bold":true},"> ",{"text":"No one will ever expect that I, a fully-grown adult man, is hiding in the high-school student restroom!"}]
execute at @e[tag=npc-giffy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/giffy/0-2 174t
tag @a remove npc-eavesdropper
