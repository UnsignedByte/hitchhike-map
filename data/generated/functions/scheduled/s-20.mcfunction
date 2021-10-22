execute as @e[tag=maze-mob,type=bee] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[tag=maze-shulker-bullet,nbt=!{Target:[]}] at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=nearest,limit=1] UUID
execute as @e[tag=maze-mob,type=bee] run data modify entity @s AngerTime set value 2147483647
execute as @e[tag=maze-mob,type=bee] run data modify entity @s HasStung set value 0
scoreboard players set mobcount maze 0
execute as @e[tag=maze-mob,type=!player] run scoreboard players add mobcount maze 1
execute if score enabled maze matches 1 if score mobcount maze matches ..50 if predicate hitchhike:batchchance at @r as @e[tag=maze-node,distance=4..16,sort=random,limit=1] at @s run function hitchhike:story/maze/mobs/summonbatch
# make names visible only in range
execute as @e[tag=npc] run data modify entity @s CustomNameVisible set value 0
execute at @a as @e[tag=npc,distance=..10] run data modify entity @s CustomNameVisible set value 1
# update entities with special tags
execute as @e[type=villager,tag=baby] run data modify entity @s Age set value -30
effect give @e[tag=invisible] minecraft:invisibility 2 0 true
schedule function generated:scheduled/s-20 20t
