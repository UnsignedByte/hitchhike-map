tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #3-12: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Welcome to the "},{"text":"waiting room","italic":true},{"text":". Please be patient while I load the SD card data into memory..."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @a -1400.0 11 -150.0
schedule function generated:story/maze/create 1t
schedule function generated:npc/sawyer/3-12 180t
tag @a remove npc-eavesdropper
