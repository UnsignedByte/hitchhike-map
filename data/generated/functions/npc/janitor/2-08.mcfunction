tag @a[tag=victim-of-dialogue-by-janitor, limit=1] add npc-eavesdropper
execute at @e[tag=npc-janitor, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-9: speak and make noise.
execute at @e[tag=npc-janitor, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ivan Cummings","color":"#f2d811","bold":true},"> ",{"text":"So, why don't I just give you my tools, and you can clean this room yourself to look for that backpack."}]
execute at @e[tag=npc-janitor, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/janitor/2-09 174t
tag @a remove npc-eavesdropper
