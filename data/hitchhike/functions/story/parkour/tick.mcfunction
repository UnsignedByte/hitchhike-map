execute as @e[tag=checkpoint-marker] at @s run function generated:story/parkour/updatespawn

execute as @e[type=player,scores={checkpoint-id=-2147483648..,parkour-deaths=1..}] run function generated:story/parkour/respawn
scoreboard players set @e[type=player] parkour-deaths 0

execute as @e[type=item,nbt={Item:{tag:{compass:1b}}}] at @s run function generated:story/parkour/throwncompass

# Respawn players falling into lava
execute as @a[x=941,y=149,z=513,dx=35,dy=0,dz=17] run function generated:story/parkour/respawn