#> load the puzzle with the id "loadid tower-puzzle-id"
# Clear items
clear @a #wool{wire:1b}
kill @e[type=item,nbt={Item:{tag:{wire:1b}}}]
gamerule doTileDrops true
setblock -1999 67 -10 air
setblock -1999 67 -10 stone_button[powered=false,facing=south]
execute as @e[tag=tower-puzzle] if score @s tower-puzzle-id = loadid tower-puzzle-id at @s run function generated:story/tower/puzzles/_loadpuzzle
scoreboard players set interim tower-puzzle-id 0
