execute store success score start story-hurm positioned 1078 125 350 unless block ~ ~ ~ dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false] run tag @p add hurm-selected
execute unless score start story-hurm matches 1 store success score start story-hurm positioned 1078 125 359 unless block ~ ~ ~ dark_oak_door[facing=south,half=lower,hinge=right,open=false,powered=false] run tag @p add hurm-selected

execute if score start story-hurm matches 1 as @a[tag=hurm-selected,limit=1] run function hitchhike:story/hurm/start
tag @a remove hurm-selected

execute unless score start story-hurm matches 1 run schedule function hitchhike:story/hurm/await_start 1t