tag @a[tag=victim-of-dialogue-by-percivalainsworth, limit=1] add npc-eavesdropper
execute at @e[tag=npc-percivalainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-percivalainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Percival Ainsworth","bold":true},"> ",{"text":"You must be one of those people the school sent to be my \"friend\" huh?"}]
execute at @e[tag=npc-percivalainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/percivalainsworth/0-2 126t
tag @a remove npc-eavesdropper
