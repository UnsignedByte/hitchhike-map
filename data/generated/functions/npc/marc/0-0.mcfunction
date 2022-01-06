tag @a[tag=victim-of-dialogue-by-marc, limit=1] add npc-eavesdropper
execute at @e[tag=npc-marc, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"I have nothing to say to you."}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/marc/0-1 60t
tag @a remove npc-eavesdropper
