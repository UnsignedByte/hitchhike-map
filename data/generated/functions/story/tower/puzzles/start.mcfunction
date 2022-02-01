tp @a[tag=!admin] -2000 148 -50 -90 90
effect give @a[tag=!admin] minecraft:resistance 8 5 true
effect give @a[tag=!admin] minecraft:nausea 8 0 true
effect give @a[tag=!admin] minecraft:slowness 4 255 true
effect give @a[tag=!admin] minecraft:night_vision 4 0 true
particle minecraft:portal -2000 145 -50 1 3 1 0.15 1000
playsound minecraft:block.portal.travel block @a -2000 148 -50 1 0.8
scoreboard players set loadid tower-puzzle-id 0
function generated:story/tower/puzzles/loadpuzzle
scoreboard players set #electrical-done vars 0
execute as @a[tag=!admin] run function generated:story/parkour/setpuzzlecheckpoint
schedule function generated:story/tower/puzzles/start-0 75t
