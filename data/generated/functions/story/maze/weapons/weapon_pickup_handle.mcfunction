scoreboard players set @a maze-weapon-selected -1
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"spoon"}}}] at @s run function generated:story/maze/weapons/weapon_pickup_handle/spoon
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"commandblock"}}}] at @s run function generated:story/maze/weapons/weapon_pickup_handle/commandblock
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"frenchflag"}}}] at @s run function generated:story/maze/weapons/weapon_pickup_handle/frenchflag
execute as @a[scores={maze-weapon-selected=0..}] unless entity @s[scores={maze-weapon-selected=0}] run clear @s minecraft:iron_shovel{weapon:"spoon",isweapon:1b}
execute as @a[scores={maze-weapon-selected=0..}] if entity @s[scores={maze-weapon-selected=0}] run function generated:story/maze/weapons/spoon/give
execute as @a[scores={maze-weapon-selected=0..}] unless entity @s[scores={maze-weapon-selected=1}] run clear @s minecraft:command_block{weapon:"commandblock",isweapon:1b}
execute as @a[scores={maze-weapon-selected=0..}] if entity @s[scores={maze-weapon-selected=1}] run function generated:story/maze/weapons/commandblock/give
execute as @a[scores={maze-weapon-selected=0..}] unless entity @s[scores={maze-weapon-selected=2}] run clear @s minecraft:white_banner{weapon:"frenchflag",isweapon:1b}
execute as @a[scores={maze-weapon-selected=0..}] if entity @s[scores={maze-weapon-selected=2}] run function generated:story/maze/weapons/frenchflag/give
execute if score enabled maze matches 1 run schedule function generated:story/maze/weapons/weapon_pickup_handle 5t
