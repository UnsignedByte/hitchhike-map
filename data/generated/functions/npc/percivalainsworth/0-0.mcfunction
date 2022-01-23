tag @a[tag=victim-of-dialogue-by-percivalainsworth, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-percivalainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-percivalainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Percival Ainsworth","color":"#f7cd4f","bold":true},"> ",{"text":"Ugh, what do you want? Can't you see I'm studying here?"}]
execute at @e[type=villager,tag=npc-percivalainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/percivalainsworth/0-1 96t
tag @a remove npc-eavesdropper
