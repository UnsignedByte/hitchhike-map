execute as @a[nbt={Inventory:[{tag:{store:"safeway",sold:0b}}]}] unless entity @s[x=881,z=-169,dx=36,dz=18] run tag @s add shop-escapee
execute as @a[tag=shop-escapee] at @s run function generated:story/stores/safeway/_lock
tag @a remove shop-escapee
