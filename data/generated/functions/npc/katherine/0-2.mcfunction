tag @a[tag=victim-of-dialogue-by-katherine, limit=1] add npc-eavesdropper
execute at @e[tag=npc-katherine, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-katherine, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Katherine Au-Flauge","bold":true},"> ",{"text":"Those darn things just wont stop meowing."}]
execute at @e[tag=npc-katherine, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/katherine/0-3 60t
tag @a remove npc-eavesdropper
