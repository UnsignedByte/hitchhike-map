# Kill all hosts missing chilren
tp @e[tag=maze-host,nbt=!{Passengers:[{}]}] 0 -1000 0

execute at @e[tag=maze-gridbug-cobwebtimer,nbt={Age:100}] run fill ~ ~ ~ ~ ~ ~ air replace cobweb

function hitchhike:story/maze/mobs/johnny/anviltick
execute as @e[tag=maze-explorer-wave] at @s run function hitchhike:story/maze/mobs/boss/explorer/wavetick