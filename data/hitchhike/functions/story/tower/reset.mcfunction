function generated:story/tower/resetbasement
scoreboard players set #tower-climbed vars 0

function generated:story/tower/placekey

function hitchhike:story/tower/puzzles/reset

# Reset end rods

fill 978 228 571 994 255 555 air replace end_rod
# fill 984 219 563 984 222 563 redstone_lamp[lit=false]
fill 985 222 563 985 219 563 minecraft:polished_andesite
setblock 982 232 563 minecraft:deepslate_brick_wall[east=low,north=none,south=none,up=true,waterlogged=false,west=none]
setblock 982 236 563 minecraft:deepslate_brick_wall[east=tall,north=none,south=none,up=true,waterlogged=false,west=none]
setblock 990 230 567 minecraft:polished_deepslate_slab[type=bottom,waterlogged=false]
setblock 990 234 567 minecraft:polished_deepslate_slab[type=top,waterlogged=false]
setblock 986 255 563 minecraft:andesite_wall[east=none,north=none,south=none,up=true,waterlogged=false,west=none]
