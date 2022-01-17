scoreboard players operation oq-9-0-1 q-9 = q-9-0-1 q-9
scoreboard players set q-9-0-1 q-9 0
execute if entity @a[nbt={Inventory:[{id: "minecraft:stone_button", tag: {display: {Name: '{"text":"Logitech® M585 Multi-Device Wireless Mouse with Flow Tech","color":"light_gray"}', Lore: ['{"text":"Compact mouse with extra controls","color":"gray"}']}}}]},x=947,y=70,z=-3,dz=4,dx=6,dy=3] run scoreboard players add q-9-0-1 q-9 1
scoreboard players operation q-9-0-1 q-9 *= 100 const
scoreboard players operation q-9-0-1 q-9 *= 1 const
scoreboard players operation q-9-0-1 q-9 /= 100 const
execute unless score q-9-0-1 q-9 matches ..1 run scoreboard players set q-9-0-1 q-9 1
