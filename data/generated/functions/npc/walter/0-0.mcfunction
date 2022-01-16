tag @a[tag=victim-of-dialogue-by-walter, limit=1] add npc-eavesdropper
execute at @e[tag=npc-walter, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-walter, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Walter Wheat","color":"#f7e5dc","bold":true},"> ",{"text":"What are you doing in my trailer??"}]
execute at @e[tag=npc-walter, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/walter/0-1 66t
tag @a remove npc-eavesdropper
