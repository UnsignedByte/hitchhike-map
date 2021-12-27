scoreboard players set _rngm vars 2
scoreboard players set _rngmin vars 0
execute positioned 899.5 54.5 -82.5 if entity @a[tag=fountainous] if predicate generated:coinflip run function generated:story/fountain/spawn/random
execute positioned 899.5 54.5 -82.5 if entity @a[tag=fountainous] if predicate generated:coinflip run function generated:story/fountain/spawn/random
scoreboard players set _rngmin vars 4
execute positioned 899.5 54.5 -92.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random
execute positioned 891.5 56.5 -92.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random
scoreboard players set _rngmin vars 2
scoreboard players set _rngm vars 2
execute positioned 893.5 60.5 -85.5 if entity @a[tag=fountainous] if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random
execute positioned 894.5 60.5 -84.5 if entity @a[tag=fountainous] if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random
execute positioned 895.5 60.5 -85.5 if entity @a[tag=fountainous] if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random
execute positioned 896.5 60.5 -84.5 if entity @a[tag=fountainous] if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random
execute positioned 897.5 60.5 -85.5 if entity @a[tag=fountainous] if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random
execute positioned 899.5 54.5 -90.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random
execute positioned 891.5 54.5 -90.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random
schedule function generated:scheduled/s-12 12t
