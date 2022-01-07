#> Teleport out all players

particle poof 978.0 66 -0.5 2 0.7 1.6 0 500
playsound entity.blaze.shoot neutral @a ~ ~ ~ 1 1.1
tp @a[tag=epthon-trespasser] 975 64 -7

particle cloud 975.5 65 -6.5 0.15 0.4 0.15 0.06 50

tag @a remove epthon-trespasser

schedule function hitchhike:story/misc/epthon/resetdoor 20t