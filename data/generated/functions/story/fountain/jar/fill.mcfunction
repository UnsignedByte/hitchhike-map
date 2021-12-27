fill 923 48 -80 925 48 -78 minecraft:spruce_planks
setblock 924 60 -79 water
schedule function generated:story/fountain/jar/fill/0 65t
kill @e[tag=jar-coin]
scoreboard players set coincount fishjar 0
scoreboard players set cashcount fishjar 0
function generated:story/fountain/jar/spawn
