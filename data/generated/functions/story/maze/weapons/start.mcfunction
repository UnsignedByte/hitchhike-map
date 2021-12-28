execute store result score #CMP UUID0 run data get entity @s Thrower[0]
execute store result score #CMP UUID1 run data get entity @s Thrower[1]
execute store result score #CMP UUID2 run data get entity @s Thrower[2]
execute store result score #CMP UUID3 run data get entity @s Thrower[3]
tag @a add match-selectable
function hitchhike:uuid/match
execute if entity @s[type=item,nbt={Item:{tag:{weapon:"spoon"}}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/spoon/start
execute if entity @s[type=item,nbt={Item:{tag:{weapon:"frenchflag"}}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/frenchflag/start
execute if entity @s[type=item,nbt={Item:{tag:{weapon:"commandblock"}}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/commandblock/start
execute if entity @s[type=item,nbt={Item:{tag:{weapon:"firewall"}}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/firewall/start
execute if entity @s[type=item,nbt={Item:{tag:{weapon:"buildtool"}}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/buildtool/start
kill @s
