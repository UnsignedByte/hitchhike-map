tag @a remove wire-puzzler
execute if score interim tower-puzzle-id matches 0 run tag @a[x=-2012,y=63,z=-12,dx=24,dy=6,dz=24] add wire-puzzler

kill @e[type=item,nbt={Item:{tag:{wirecutter:1b}}}]
execute as @a[tag=wire-puzzler,nbt=!{Inventory:[{tag:{wirecutter:1b}}]}] run function generated:story/tower/puzzles/givecutter
clear @a shears{wirecutter:1b}

execute as @a[tag=wire-puzzler,nbt={SelectedItem:{tag:{wire:1b}}}] run item modify entity @s weapon.mainhand hitchhike:wire_enable
execute as @a[tag=wire-puzzler,nbt={Inventory:[{tag:{wire:1b},Slot:-106b}]}] run item modify entity @s weapon.offhand hitchhike:wire_enable

execute as @a[tag=!wire-puzzler,nbt={SelectedItem:{tag:{wire:1b}}}] run item modify entity @s weapon.mainhand generated:disallow_build
execute as @a[tag=!wire-puzzler,nbt={Inventory:[{tag:{wire:1b},Slot:-106b}]}] run item modify entity @s weapon.offhand generated:disallow_build

execute as @a[tag=wire-puzzler,nbt={SelectedItem:{tag:{wirecutter:1b}}}] run item modify entity @s weapon.mainhand hitchhike:wirecutter_enable

execute as @a[tag=!wire-puzzler,nbt={SelectedItem:{tag:{wirecutter:1b}}}] run item modify entity @s weapon.mainhand generated:disallow_mine