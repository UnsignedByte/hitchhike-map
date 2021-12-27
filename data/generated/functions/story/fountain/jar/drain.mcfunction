fill 921 49 -76 927 55 -82 water[level=1] replace water
clone 925 42 -78 923 42 -80 923 48 -80
fill 925 48 -80 923 48 -78 water[level=1] replace water
setblock 914 55 -73 minecraft:blue_stained_glass
scoreboard players set chimeIndex fishjar 0
setblock 914 56 -85 minecraft:barrier
schedule function generated:story/fountain/jar/incrementcount 5t
