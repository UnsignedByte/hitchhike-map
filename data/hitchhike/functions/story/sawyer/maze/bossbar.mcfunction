#> Update bossbar while boss exists

execute store result score bossbar maze run bossbar get maze:boss max
execute store result score #tmp maze run data get entity @e[tag=maze-boss,limit=1] Health 100
scoreboard players operation bossbar maze += #tmp maze
scoreboard players remove bossbar maze 204800
execute store result bossbar maze:boss value run scoreboard players get bossbar maze

execute if score bossbar maze matches ..0 run function hitchhike:story/sawyer/maze/killboss

execute if score bossbar maze matches 1.. run schedule function hitchhike:story/sawyer/maze/bossbar 1t