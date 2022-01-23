tag @a[tag=victim-of-dialogue-by-walter, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-walter, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-walter, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Walter Wheat","color":"#f7e5dc","bold":true},"> ",{"text":"This is my final warning. Cross me, and there will be consequences."}]
execute at @e[type=villager,tag=npc-walter, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/walter/0-2 108t
tag @a remove npc-eavesdropper
