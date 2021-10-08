# Dialogue line #2-24: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"What are you loitering around for? Get on it!"}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
setblock 956 44 204 minecraft:redstone_block
setblock 956 44 203 minecraft:powered_rail[powered=true,shape=ascending_west,waterlogged=false]
setblock 945 39 194 minecraft:rail[shape=north_west,waterlogged=false]
setblock 942 39 189 minecraft:rail[shape=north_south,waterlogged=false]
summon minecart 956.5 44 203.5 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon -1
# set up position for later: tp @e[tag=npc-simon, limit=1] 942.50 69 183.50 135 -10
schedule function generated:npc/simon/2-end 96t
