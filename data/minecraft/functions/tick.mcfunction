execute as @a[tag=sussy] at @s positioned ~-0.3 ~-0.1 ~-0.3 run function midas:spawnaec
execute as @a[tag=sussy] at @s positioned ~0.3 ~-0.1 ~-0.3 run function midas:spawnaec
execute as @a[tag=sussy] at @s positioned ~-0.3 ~-0.1 ~0.3 run function midas:spawnaec
execute as @a[tag=sussy] at @s positioned ~0.3 ~-0.1 ~0.3 run function midas:spawnaec

execute at @a[tag=sussy] as @e[tag=midas,tag=!init,distance=..3,sort=nearest,limit=1] at @s run function midas:spread
# execute at @a[tag=sussy] as @e[tag=midas,tag=!init,distance=..5,sort=random,limit=1] at @s run function midas:spread
execute as @e[tag=midas,tag=!init,sort=random,limit=5] at @s run function midas:spread

kill @e[tag=midas,scores={neighbours=18}]

function midas:replaceinv

tag @e[tag=init,tag=midas] remove init