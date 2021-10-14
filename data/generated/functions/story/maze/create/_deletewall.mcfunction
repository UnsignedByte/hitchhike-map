# Delete wall between self and node marked maze-connect
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-0] positioned ~4 ~0 ~0 run fill ~0 ~-2 ~-2 ~1 ~2 ~2 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-0] run tag @s add maze-connect-0
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-0] run tag @s add maze-connect-5
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-1] positioned ~0 ~4 ~0 run fill ~-2 ~0 ~-2 ~2 ~1 ~2 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-1] run tag @s add maze-connect-1
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-1] run tag @s add maze-connect-4
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-2] positioned ~0 ~0 ~4 run fill ~-2 ~-2 ~0 ~2 ~2 ~1 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-2] run tag @s add maze-connect-2
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-2] run tag @s add maze-connect-3
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-3] positioned ~0 ~0 ~-4 run fill ~-2 ~-2 ~0 ~2 ~2 ~-1 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-3] run tag @s add maze-connect-3
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-3] run tag @s add maze-connect-2
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-4] positioned ~0 ~-4 ~0 run fill ~-2 ~0 ~-2 ~2 ~-1 ~2 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-4] run tag @s add maze-connect-4
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-4] run tag @s add maze-connect-1
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-5] positioned ~-4 ~0 ~0 run fill ~0 ~-2 ~-2 ~-1 ~2 ~2 air
execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-5] run tag @s add maze-connect-5
execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-5] run tag @s add maze-connect-0
tag @e[type=marker,tag=maze-node] remove maze-connect
