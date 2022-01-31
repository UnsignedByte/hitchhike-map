kill @e[tag=maze-path-display]
kill @e[tag=maze-path-start-marker]

execute at @e[scores={maze-path=0..}] run summon marker ~ ~ ~ {Tags:["maze-path-display","maze-marker"]}

execute at @e[tag=path-start] run summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Tags:["maze-marker","maze-path-start-marker","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647}]}
team join mazepathdisplay @e[tag=maze-path-start-marker]

# execute as @e[tag=maze-path-display] at @s run scoreboard players operation @s maze-path = @e[sort=nearest,tag=maze-node,limit=1] maze-path