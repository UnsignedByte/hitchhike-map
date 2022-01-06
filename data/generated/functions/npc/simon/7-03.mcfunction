tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #7-4: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Follow me, I'll get this plugged in."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
setblock 942 39 183 minecraft:powered_rail[powered=true,shape=ascending_north,waterlogged=false]
setblock 942 39 182 redstone_block
setblock 942 39 189 minecraft:rail[shape=north_south,waterlogged=false]
setblock 945 39 194 minecraft:rail[shape=north_west,waterlogged=false]
setblock 960 44 202 minecraft:rail[shape=north_east,waterlogged=false]
setblock 964 44 201 minecraft:stone
setblock 963 44 201 minecraft:powered_rail[powered=false,shape=east_west,waterlogged=false]
summon minecart 942.5 39 183.5 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon 1
schedule function generated:npc/simon/7-04 200t
tag @a remove npc-eavesdropper
