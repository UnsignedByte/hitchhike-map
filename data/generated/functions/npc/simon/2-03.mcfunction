tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #2-4: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Anyways, I see you're pretty determined to get up this mountain, huh."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
setblock 949 40 -1 minecraft:redstone_block
setblock 949 41 -1 minecraft:powered_rail[powered=false,shape=east_west,waterlogged=false]
setblock 950 40 -1 minecraft:powered_rail[powered=false,shape=ascending_west,waterlogged=false]
setblock 957 35 0 minecraft:powered_rail[powered=false,shape=east_west,waterlogged=false]
setblock 958 35 0 minecraft:stone
tag @e[tag=npc-sawyer] remove npc-unface
setblock 955 35 1 minecraft:redstone_wire[east=side,north=none,power=0,south=none,west=side]
summon minecart 950 40 -1 {Silent:1,Tags:["sawyer-holder"]}
scoreboard players set @e[tag=npc-sawyer] dialogue-status -1
scoreboard players set -held story-sawyer -1
schedule function generated:npc/simon/2-04 132t
tag @a remove npc-eavesdropper
