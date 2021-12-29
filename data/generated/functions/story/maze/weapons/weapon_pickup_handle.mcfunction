scoreboard players set @a maze-weapon-seld -1
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"pointer"}}}] at @s positioned ~-0.3 ~-1 ~-0.3 run scoreboard players set @a[dx=1.6,dy=2,dz=1.6] maze-weapon-seld 0
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"commandblock"}}}] at @s positioned ~-0.3 ~-1 ~-0.3 run scoreboard players set @a[dx=1.6,dy=2,dz=1.6] maze-weapon-seld 1
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"firewall"}}}] at @s positioned ~-0.3 ~-1 ~-0.3 run scoreboard players set @a[dx=1.6,dy=2,dz=1.6] maze-weapon-seld 2
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"spoon"}}}] at @s positioned ~-0.3 ~-1 ~-0.3 run scoreboard players set @a[dx=1.6,dy=2,dz=1.6] maze-weapon-seld 3
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"frenchflag"}}}] at @s positioned ~-0.3 ~-1 ~-0.3 run scoreboard players set @a[dx=1.6,dy=2,dz=1.6] maze-weapon-seld 4
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"medicine"}}}] at @s positioned ~-0.3 ~-1 ~-0.3 run scoreboard players set @a[dx=1.6,dy=2,dz=1.6] maze-weapon-seld 5
execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=0}] run clear @s minecraft:redstone_torch{weapon:"pointer",isweapon:1b}
execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=1}] run clear @s minecraft:command_block{weapon:"commandblock",isweapon:1b}
execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=2}] run clear @s minecraft:blaze_powder{weapon:"firewall",isweapon:1b}
execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=3}] run clear @s minecraft:iron_shovel{weapon:"spoon",isweapon:1b}
execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=4}] run clear @s minecraft:white_banner{weapon:"frenchflag",isweapon:1b}
execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=5}] run clear @s minecraft:dragon_breath{weapon:"medicine",isweapon:1b}
execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=0}] unless entity @s[nbt={Inventory:[{tag:{weapon:"pointer"}}]}] run function generated:story/maze/weapons/pointer/give
execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=1}] unless entity @s[nbt={Inventory:[{tag:{weapon:"commandblock"}}]}] run function generated:story/maze/weapons/commandblock/give
execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=2}] unless entity @s[nbt={Inventory:[{tag:{weapon:"firewall"}}]}] run function generated:story/maze/weapons/firewall/give
execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=3}] unless entity @s[nbt={Inventory:[{tag:{weapon:"spoon"}}]}] run function generated:story/maze/weapons/spoon/give
execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=4}] unless entity @s[nbt={Inventory:[{tag:{weapon:"frenchflag"}}]}] run function generated:story/maze/weapons/frenchflag/give
execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=5}] unless entity @s[nbt={Inventory:[{tag:{weapon:"medicine"}}]}] run function generated:story/maze/weapons/medicine/give
execute if score enabled maze matches 1 run schedule function generated:story/maze/weapons/weapon_pickup_handle 5t
