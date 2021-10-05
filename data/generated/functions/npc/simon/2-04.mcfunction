# Dialogue line #2-5: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Come on in, I have some things to give you."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] 100
setblock 945 39 194 minecraft:rail[shape=north_east,waterlogged=false]
setblock 911 34 194 minecraft:redstone_block
setblock 912 34 194 minecraft:powered_rail[powered=true,shape=ascending_west,waterlogged=false]
summon minecart 912 34 194 {Silent:1,Tags:["simon-holder"]}
tag @e[tag=npc-simon, limit=1] add npc-unface
scoreboard players set -held story-simon -1
schedule function generated:npc/simon/2-05 105t
