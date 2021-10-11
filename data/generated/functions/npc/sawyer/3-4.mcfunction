tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #3-5: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Ok, I'll take this to my PC upstairs."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
setblock 958 35 0 minecraft:redstone_block
setblock 957 35 0 minecraft:powered_rail[powered=true,shape=ascending_east,waterlogged=false]
setblock 958 36 0 minecraft:powered_rail[powered=true,shape=east_west,waterlogged=false]
tag @e[tag=npc-sawyer] add npc-unface
summon minecart 957 35 0 {Silent:1,Tags:["sawyer-holder"]}
scoreboard players set -held story-sawyer 1
schedule function generated:npc/sawyer/3-5 60t
tag @a remove npc-eavesdropper
