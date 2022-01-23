tag @a[tag=victim-of-dialogue-by-janitor, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-janitor, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-8: speak and make noise.
execute at @e[type=villager,tag=npc-janitor, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ivan Cummings","color":"#f2d811","bold":true},"> ",{"text":"I, on the other hand, need this room cleaned, but frankly, I'm not paid enough for this."}]
execute at @e[type=villager,tag=npc-janitor, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/janitor/2-08 150t
tag @a remove npc-eavesdropper
