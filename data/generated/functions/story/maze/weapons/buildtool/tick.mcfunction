execute if score enabled maze matches 1 run item modify entity @a[tag=maze-mob,nbt={SelectedItem:{id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}}] weapon.mainhand generated:allow_buildtool
execute if score enabled maze matches 1 run item modify entity @a[tag=maze-mob,nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}]}] weapon.offhand generated:allow_buildtool
item modify entity @a[tag=!maze-mob,nbt={SelectedItem:{id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}}] weapon.mainhand generated:disallow_build
item modify entity @a[tag=!maze-mob,nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}]}] weapon.offhand generated:disallow_build
