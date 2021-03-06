tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #5-7: speak and make noise.
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#8de359","bold":true},"> ",{"text":"Welcome to the "},{"text":"waiting room","italic":true},{"text":". Please be patient while I load the SD card data into memory... My computer is slow so watch out for lag. Sorry."}]
execute at @e[type=villager,tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @a[tag=!admin] -1400.0 13 -150.0 -180 0
spawnpoint @a -1400 11 -150
schedule function generated:story/maze/create 1t
schedule function generated:npc/sawyer/5-end 168t
tag @a remove npc-eavesdropper
