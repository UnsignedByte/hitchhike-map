tag @a remove wire-puzzler
execute if score interim tower-puzzle-id matches 0 run tag @a[x=-2012,y=63,z=-12,dx=24,dy=6,dz=24] add wire-puzzler

spawnpoint @a[tag=wire-puzzler] -2000 64 -9
execute as @a[tag=wire-puzzler] run function generated:story/parkour/setpuzzlecheckpoint

tp @a[x=-2000,y=59,z=-9,dx=0,dy=1,dz=0] -2000 64 -9

execute as @e[type=item,x=-2012,y=63,z=-12,dx=24,dy=6,dz=24,nbt={Age:0s}] run function generated:story/tower/puzzles/updatedroppedwire

kill @e[type=item,nbt={Item:{tag:{wirecutter:1b}}}]
execute as @a[tag=wire-puzzler,nbt=!{Inventory:[{tag:{wirecutter:1b}}]}] run function generated:story/tower/puzzles/givecutter
clear @a[tag=!wire-puzzler] shears{wirecutter:1b}

execute as @a[tag=wire-puzzler,nbt={SelectedItem:{tag:{wire:1b}}}] run item modify entity @s weapon.mainhand hitchhike:wire_enable
execute as @a[tag=wire-puzzler,nbt={Inventory:[{tag:{wire:1b},Slot:-106b}]}] run item modify entity @s weapon.offhand hitchhike:wire_enable

execute as @a[tag=!wire-puzzler,nbt={SelectedItem:{tag:{wire:1b}}}] run item modify entity @s weapon.mainhand generated:disallow_build
execute as @a[tag=!wire-puzzler,nbt={Inventory:[{tag:{wire:1b},Slot:-106b}]}] run item modify entity @s weapon.offhand generated:disallow_build

execute as @a[tag=wire-puzzler,nbt={SelectedItem:{tag:{wirecutter:1b}}}] run item modify entity @s weapon.mainhand hitchhike:wirecutter_enable

execute as @a[tag=!wire-puzzler,nbt={SelectedItem:{tag:{wirecutter:1b}}}] run item modify entity @s weapon.mainhand generated:disallow_mine