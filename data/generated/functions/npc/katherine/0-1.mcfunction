tag @a[tag=victim-of-dialogue-by-katherine, limit=1] add npc-eavesdropper
execute at @e[tag=npc-katherine, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-katherine, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Katherine Au-Flauge","color":"#3a453a","bold":true},"> ",{"text":"If you find him, could you tell him to get back here and feed the cats?"}]
execute at @e[tag=npc-katherine, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/katherine/0-2 126t
tag @a remove npc-eavesdropper
