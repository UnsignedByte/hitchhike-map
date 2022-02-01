tp @a[tag=!admin] -2000 148 -50 -90 90
effect give @a[tag=!admin] minecraft:resistance 5 5 true
effect give @a[tag=!admin] minecraft:nausea 6 0 true
effect give @a[tag=!admin] minecraft:slowness 5 255 true
effect give @a[tag=!admin] minecraft:blindness 5 0 true
playsound minecraft:block.portal.travel block @a -2000 148 -50 1 0.8
scoreboard players set loadid tower-puzzle-id 0
function generated:story/tower/puzzles/loadpuzzle
scoreboard players set #electrical-done vars 0
execute as @a[tag=!admin] run function generated:story/parkour/setpuzzlecheckpoint
schedule function generated:story/tower/puzzles/start-0 75t
