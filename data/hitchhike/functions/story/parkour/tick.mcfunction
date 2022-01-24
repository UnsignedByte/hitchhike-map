execute as @e[tag=checkpoint-marker] at @s run function generated:story/parkour/updatespawn

execute as @e[type=player,scores={checkpoint-id=-2147483648..,parkour-deaths=1..}] run function generated:story/parkour/respawn
scoreboard players set @e[type=player] parkour-deaths 0

execute as @e[type=item,nbt={Item:{tag:{compass:1b}}}] at @s run function generated:story/parkour/throwncompass

# Respawn players falling into lava
execute as @a[x=941,y=149,z=513,dx=35,dy=0,dz=17,gamemode=adventure] run function generated:story/parkour/respawn

# tag @a remove crouching
# tag @a[scores={crouching=1..}] add crouching
# scoreboard players set @a crouching 0

function generated:story/parkour/offtrail

tp @a[x=819,y=114,z=411,dx=0,dy=1,dz=0,nbt=!{Inventory:[{Slot:100b,tag:{snowshoes:1b}}]}] 819.5 114 410.5