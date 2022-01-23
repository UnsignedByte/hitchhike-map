tag @a[tag=victim-of-dialogue-by-maisebovat, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-maisebovat, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-maisebovat, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mary Bennett","color":"#6f9ee8","bold":true},"> ",{"text":"Just when I thought I had an easy win to that dumb game of hide-n-seek too."}]
execute at @e[type=villager,tag=npc-maisebovat, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/maisebovat/0-3 138t
tag @a remove npc-eavesdropper
