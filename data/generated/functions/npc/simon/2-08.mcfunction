# Dialogue line #2-9: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Come on in, I have some things to give you."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
setblock 945 39 194 minecraft:rail[shape=north_east,waterlogged=false]
setblock 911 34 193 minecraft:redstone_block
setblock 912 34 193 minecraft:powered_rail[powered=true,shape=ascending_west,waterlogged=false]
setblock 956 44 203 minecraft:powered_rail[powered=false,shape=east_west,waterlogged=false]
# Open gate
clone 907 59 184 918 60 192 907 64 184
summon minecart 912 34 193 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon -1
schedule function generated:npc/simon/2-09 90t
