tag @a[tag=victim-of-dialogue-by-patriciagoldstein, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-patriciagoldstein, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-patriciagoldstein, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Patricia Goldstein","color":"#53cf86","bold":true},"> ",{"text":"For the last time, I know I can leave, I'm choosing to stay here."}]
execute at @e[type=villager,tag=npc-patriciagoldstein, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/patriciagoldstein/0-1 80t
tag @a remove npc-eavesdropper
