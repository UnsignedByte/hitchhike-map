execute at @a run tag @e[tag=maze-mob,tag=!maze-host,type=!player,distance=..24,sort=nearest,limit=40] add maze-mob-safe
tp @e[tag=maze-mob,tag=!maze-mob-safe,type=!player,tag=!maze-host,tag=!maze-boss] 0 -1000 0
tag @e remove maze-mob-safe
execute if score enabled maze matches 1 run effect give @a minecraft:saturation 1000000 0 true
schedule function generated:scheduled/s-100 100t
