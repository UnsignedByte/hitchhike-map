tp @a[tag=!admin] -2000 148 -50 -90 90
effect give @a[tag=!admin] minecraft:resistance 5 5 true
effect give @a[tag=!admin] minecraft:nausea 6 0 true
effect give @a[tag=!admin] minecraft:slowness 5 255 true
scoreboard players set loadid tower-puzzle-id 0
function generated:story/tower/puzzles/loadpuzzle
scoreboard players set #electrical-done vars 0
execute as @a[tag=!admin] run function generated:story/parkour/setpuzzlecheckpoint
schedule function generated:story/tower/puzzles/start-0 70t
