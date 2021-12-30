execute as @a[x=1238,y=111,z=312,dx=12,dy=10,dz=13,nbt={SelectedItem:{tag:{hurmpick:1b}}}] run item modify entity @s weapon.mainhand hitchhike:hurmpick_enable
execute as @a[x=1167,y=120,z=276,dx=23,dy=20,dz=24,nbt={SelectedItem:{tag:{hurmaxe:1b}}}] run item modify entity @s weapon.mainhand hitchhike:hurmaxe_enable

execute as @a[nbt={SelectedItem:{tag:{hurmpick:1b}}}] unless entity @s[x=1238,y=111,z=312,dx=12,dy=10,dz=13] run item modify entity @s weapon.mainhand generated:disallow_mine
execute as @a[nbt={SelectedItem:{tag:{hurmaxe:1b}}}] unless entity @s[x=1167,y=120,z=276,dx=23,dy=20,dz=24] run item modify entity @s weapon.mainhand generated:disallow_mine

execute if entity @a[scores={hurm-mined=1..}] as @e[tag=hurm-mine-coal] at @s if block ~ ~ ~ air run function hitchhike:story/hurm/handle_coal
execute unless score -chopped hurm-chopped matches 3.. if entity @a[scores={hurm-chopped=1..}] run function generated:story/hurm/handle_chop

execute as @a[x=1097,y=124,z=361,dx=10,dz=10,dy=2,nbt={SelectedItem:{id:"minecraft:campfire"}}] run item modify entity @s weapon.mainhand hitchhike:hurmcampfire_enable
execute as @a[x=1097,y=124,z=361,dx=10,dz=10,dy=2,nbt={Inventory:[{id:"minecraft:campfire",Slot:-106b}]}] run item modify entity @s weapon.offhand hitchhike:hurmcampfire_enable

execute as @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] unless entity @s[x=1097,y=124,z=361,dx=10,dz=10,dy=2] run item modify entity @s weapon.mainhand generated:disallow_build
execute as @a[nbt={Inventory:[{id:"minecraft:campfire",Slot:-106b}]}] unless entity @s[x=1097,y=124,z=361,dx=10,dz=10,dy=2] run item modify entity @s weapon.offhand generated:disallow_build

scoreboard players set -cooked hurm-fish 0
scoreboard players set @a hurm-fish 0
execute as @a store result score @s hurm-fish run clear @s cooked_cod 0
execute as @a store result score @s hurm-fish-tmp run clear @s cooked_salmon 0
execute as @a run scoreboard players operation @s hurm-fish += @s hurm-fish-tmp
scoreboard players operation -cooked hurm-fish += @a hurm-fish

execute if score campfire quest-status matches 50.. run recipe give @a minecraft:campfire