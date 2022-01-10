execute at @e[tag=checkpoint-marker] run particle minecraft:happy_villager ~ ~1.475 ~ 0.09 0.05 0.09 0 1
#> Teleport out softlocked items
tp @e[type=item,x=891,y=64,z=-153,dx=0,dy=1,dz=0] 891 65 -154
function generated:story/fountain/jar/updateguess
execute as @e[tag=maze-mob,type=bee] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[tag=maze-shulker-bullet] at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=nearest,limit=1] UUID
execute as @e[tag=maze-mob,type=bee] run data modify entity @s AngerTime set value 2147483647
execute as @e[tag=maze-mob,type=bee] run data modify entity @s HasStung set value 0
execute as @e[tag=maze-mob,type=iron_golem] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[tag=maze-mob,type=iron_golem] run data modify entity @s AngerTime set value 2147483647
scoreboard players set mobcount maze 0
execute as @e[tag=maze-mob,type=!arrow,type=!player,tag=!maze-mob-spawn-attempt] run scoreboard players add mobcount maze 1
execute if score enabled maze matches 1 if score mobcount maze matches ..40 run function hitchhike:story/maze/mobs/attemptsummon
execute if score enabled maze matches 1 as @e[tag=maze-headswap] run function generated:story/maze/mobs/move/magma/swaphead
# make names visible only in range
execute as @e[tag=npc] run data modify entity @s CustomNameVisible set value 0
execute at @a as @e[tag=npc,distance=..10] run data modify entity @s CustomNameVisible set value 1
# update entities with special tags
execute as @e[type=villager,tag=baby] run data modify entity @s Age set value -30
effect give @e[tag=invisible] minecraft:invisibility 2 0 true
schedule function generated:scheduled/s-20 20t
