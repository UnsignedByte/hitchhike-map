tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..50 add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"HEY! What are you doing on my driveway? In fact, what are you doing HERE?"}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
# Set correct rail path
setblock 945 39 194 minecraft:rail[shape=east_west,waterlogged=false]
setblock 942 39 189 minecraft:rail[shape=south_west,waterlogged=false]
setblock 911 34 193 minecraft:stone
setblock 912 34 193 minecraft:powered_rail[powered=false,shape=east_west,waterlogged=false]
setblock 937 34 190 minecraft:redstone_wire[east=none,north=side,power=0,south=side,west=none]
summon minecart 939.5 39 195.5 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon 1
schedule function generated:npc/simon/0-1 138t
tag @a remove npc-eavesdropper
