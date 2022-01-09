tag @a[tag=victim-of-dialogue-by-bobknutz, limit=1] add npc-eavesdropper
execute at @e[tag=npc-bobknutz, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-bobknutz, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bob Knutz","bold":true},"> ",{"text":"Is that Jared? Hey Jared, what are you all the way here?"}]
execute at @e[tag=npc-bobknutz, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/bobknutz/0-2 102t
tag @a remove npc-eavesdropper
