tag @a[tag=victim-of-dialogue-by-bobknutz, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-bobknutz, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-6: speak and make noise.
execute at @e[type=villager,tag=npc-bobknutz, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bob Knots","color":"#b1bab7","bold":true},"> ",{"text":"It's so glad to meet you, Ja... uhh, James."}]
execute at @e[type=villager,tag=npc-bobknutz, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/bobknutz/0-end 48t
tag @a remove npc-eavesdropper
