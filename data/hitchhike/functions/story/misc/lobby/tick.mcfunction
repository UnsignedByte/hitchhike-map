# Save players spawning underground
execute as @a[x=-98,y=0,z=2,dx=45,dy=64,dz=45,tag=!admin] at @s run tp @s ~ 65 ~

# Change gamemode of first joiners
gamemode adventure @a[gamemode=survival]

# Handle opening door to credits
execute if score #credit-door vars matches 0 if entity @a[x=-206,y=64,z=-4,dx=1,dy=2,dz=0] run function generated:story/misc/lobby/opendoor