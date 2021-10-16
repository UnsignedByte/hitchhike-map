# Delete wall between self and node marked maze-connect
execute at @s facing entity @e[type=marker,tag=maze-node,tag=maze-connect,limit=1] run fill ^-4 ^-4 ^4 ^4 ^4 ^5 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-0] run tag @s add maze-connect-0
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-0] run tag @s add maze-connect-5
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-1] run tag @s add maze-connect-1
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-1] run tag @s add maze-connect-4
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-2] run tag @s add maze-connect-2
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-2] run tag @s add maze-connect-3
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-3] run tag @s add maze-connect-3
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-3] run tag @s add maze-connect-2
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-4] run tag @s add maze-connect-4
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-4] run tag @s add maze-connect-1
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-5] run tag @s add maze-connect-5
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-5] run tag @s add maze-connect-0
tag @e[type=marker,tag=maze-node] remove maze-connect
