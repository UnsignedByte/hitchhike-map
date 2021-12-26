tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #7-12: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Follow me and I'll get you on your way up that mountain."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
setblock 929 34 193 minecraft:rail[shape=south_east,waterlogged=false]
setblock 945 39 194 minecraft:rail[shape=north_east,waterlogged=false]
setblock 960 44 202 minecraft:rail[shape=north_east,waterlogged=false]
setblock 964 44 201 redstone_block
setblock 963 44 201 minecraft:powered_rail[powered=false,shape=ascending_east,waterlogged=false]
summon minecart 963.5 44 201.5 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon 1
# tp @e[tag=npc-simon, limit=1] 929.50 64 197.50 135 0
schedule function generated:npc/simon/7-12 300t
tag @a remove npc-eavesdropper
