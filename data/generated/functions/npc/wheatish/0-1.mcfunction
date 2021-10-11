tag @a[tag=victim-of-dialogue-by-wheatish, limit=1] add npc-eavesdropper
execute at @e[tag=npc-wheatish, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-wheatish, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mr. Wheat","color":"#c7a946","bold":true},"> ",{"text":"A fine day for some bread... though isn't that every day?"}]
execute at @e[tag=npc-wheatish, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
schedule function generated:npc/wheatish/0-2 96t
tag @a remove npc-eavesdropper
