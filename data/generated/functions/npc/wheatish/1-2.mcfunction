tag @a[tag=victim-of-dialogue-by-wheatish, limit=1] add npc-eavesdropper
execute at @e[tag=npc-wheatish, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #1-3: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"Just go try it, I'm sure you'll like it."}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/wheatish/1-end 66t
tag @a remove npc-eavesdropper
