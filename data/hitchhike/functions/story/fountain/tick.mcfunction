# Detect players in fountain
tag @a remove fountainous
execute positioned 895.5 55 -73.5 as @a[distance=..15] at @s if entity @s[y=0,dy=60] run tag @s add fountainous

execute if entity @a[tag=fountainous] run function hitchhike:story/fountain/gametick