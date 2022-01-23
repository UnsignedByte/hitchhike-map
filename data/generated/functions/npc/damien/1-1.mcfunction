tag @a[tag=victim-of-dialogue-by-damien, limit=1] add npc-eavesdropper
execute at @e[tag=npc-damien, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-2: speak and make noise.
execute at @e[tag=npc-damien, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Damien Herst","bold":true},"> ",{"text":"Hmm, that was a great discussion, I'm sure we could look further into some of the ideas proposed."}]
execute at @e[tag=npc-damien, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/damien/1-2 186t
tag @a remove npc-eavesdropper
