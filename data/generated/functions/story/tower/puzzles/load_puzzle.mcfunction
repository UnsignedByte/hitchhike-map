#> load the puzzle with the id "loadid tower-puzzle-id"
execute positioned -2009 63 -9 run fill ~ ~ ~ ~18 ~ ~18 air
execute as @e[tag=tower-puzzle] if score @s tower-puzzle-id = loadid tower-puzzle-id at @s run clone ~ ~ ~ ~18 ~ ~18 -2009 63 -9 filtered #minecraft:mineable/pickaxe
data modify block -2000 64 -9 Items set from block ~ ~1 ~ Items
