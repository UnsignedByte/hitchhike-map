kill @e[tag=maze-path-display]

execute at @e[scores={maze-path=0..}] run summon marker ~ ~ ~ {Tags:["maze-path-display","maze-marker"]}