kill @e[tag=maze-path-display]

execute at @e[scores={maze-path=0..}] run summon marker ~ ~ ~ {Tags:["maze-path-display","maze-marker"]}

# execute as @e[tag=maze-path-display] at @s run scoreboard players operation @s maze-path = @e[sort=nearest,tag=maze-node,limit=1] maze-path