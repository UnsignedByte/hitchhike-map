tag @a[tag=victim-of-dialogue-by-katherine, limit=1] add npc-eavesdropper
execute at @e[tag=npc-katherine, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-5: speak and make noise.
execute at @e[tag=npc-katherine, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Katherine Au-Flauge","bold":true},"> ",{"text":"I've heard he joined that \"Hide and Seek\" thing going on, so maybe he's hiding?"}]
execute at @e[tag=npc-katherine, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/katherine/0-end 144t
tag @a remove npc-eavesdropper
