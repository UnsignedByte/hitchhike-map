tag @a[tag=victim-of-dialogue-by-damien, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-damien, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-2: speak and make noise.
execute at @e[type=villager,tag=npc-damien, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Damien Herst","color":"#b8a184","bold":true},"> ",{"text":"Erm, that was a great discussion, I'm sure we could look further into this later."}]
execute at @e[type=villager,tag=npc-damien, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/damien/1-2 100t
tag @a remove npc-eavesdropper
