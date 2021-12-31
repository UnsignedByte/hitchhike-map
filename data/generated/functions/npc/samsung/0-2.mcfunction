tag @a[tag=victim-of-dialogue-by-samsung, limit=1] add npc-eavesdropper
execute at @e[tag=npc-samsung, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-samsung, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Samantha Sung","color":"#945da1","bold":true},"> ",{"text":"It's so dark I couldn't even distinguish it from reality."}]
execute at @e[tag=npc-samsung, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/samsung/0-end 102t
tag @a remove npc-eavesdropper
