tag @a[tag=victim-of-dialogue-by-leonarddinkle, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-leonarddinkle, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-leonarddinkle, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Leonard Dinkle","color":"#777ed9","bold":true},"> ",{"text":"Regardless, you are always welcome to work in the office if you so choose!"}]
execute at @e[type=villager,tag=npc-leonarddinkle, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/leonarddinkle/0-2 104t
tag @a remove npc-eavesdropper
