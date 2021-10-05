# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"HEY! What are you doing on my driveway? In fact, what are you doing HERE?"}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
# Set correct rail path
setblock 922 34 194 minecraft:powered_rail[powered=false,shape=north_south,waterlogged=false]
setblock 911 34 194 minecraft:stone
setblock 912 34 194 minecraft:powered_rail[powered=false,shape=east_west,waterlogged=false]
summon minecart 939.5 39 195.5 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon 1
schedule function generated:npc/simon/0-1 161t
