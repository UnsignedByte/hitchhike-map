#> Tag the neighbors of a given cell
tag @e[type=marker,tag=maze-marker] remove maze-neighbor
execute positioned ~0 ~0 ~8 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor
tag @e[type=marker,tag=maze-marker] remove maze-neighbor-0
execute positioned ~0 ~0 ~8 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor-0
execute positioned ~0 ~0 ~-8 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor
tag @e[type=marker,tag=maze-marker] remove maze-neighbor-1
execute positioned ~0 ~0 ~-8 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor-1
execute positioned ~0 ~8 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor
tag @e[type=marker,tag=maze-marker] remove maze-neighbor-2
execute positioned ~0 ~8 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor-2
execute positioned ~0 ~-8 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor
tag @e[type=marker,tag=maze-marker] remove maze-neighbor-3
execute positioned ~0 ~-8 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor-3
execute positioned ~8 ~0 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor
tag @e[type=marker,tag=maze-marker] remove maze-neighbor-4
execute positioned ~8 ~0 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor-4
execute positioned ~-8 ~0 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor
tag @e[type=marker,tag=maze-marker] remove maze-neighbor-5
execute positioned ~-8 ~0 ~0 run tag @e[type=marker,tag=maze-marker,tag=maze-node,distance=0,sort=nearest,limit=1] add maze-neighbor-5
