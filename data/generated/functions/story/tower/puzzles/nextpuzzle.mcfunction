gamerule doTileDrops false
setblock -1999 67 -10 air
setblock -1999 67 -10 stone_button[powered=true,facing=south]
scoreboard players set interim tower-puzzle-id 1
schedule function generated:story/tower/puzzles/nextpuzzle-0 20t
