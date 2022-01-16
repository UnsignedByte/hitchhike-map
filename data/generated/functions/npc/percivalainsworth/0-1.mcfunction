tag @a[tag=victim-of-dialogue-by-percivalainsworth, limit=1] add npc-eavesdropper
execute at @e[tag=npc-percivalainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-percivalainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Percival Ainsworth","color":"#f7cd4f","bold":true},"> ",{"text":"What, did Jasmine finally give up? Is the school now sending you to be my \"friend\"?"}]
execute at @e[tag=npc-percivalainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/percivalainsworth/0-2 138t
tag @a remove npc-eavesdropper
