scoreboard players operation oq-8-0-1 q-8 = q-8-0-1 q-8
scoreboard players set q-8-0-1 q-8 0
execute if entity @a[nbt={Inventory:[{id: "minecraft:stone_button", tag: {display: {Name: '{"text":"Logitech® M585 Multi-Device Wireless Mouse with Flow Tech","color":"light_gray"}', Lore: ['{"text":"Compact mouse with extra controls","color":"gray"}']}}}]},x=947,y=70,z=-3,dz=4,dx=6,dy=3] run scoreboard players add q-8-0-1 q-8 1
scoreboard players operation q-8-0-1 q-8 *= 100 const
scoreboard players operation q-8-0-1 q-8 *= 1 const
scoreboard players operation q-8-0-1 q-8 /= 100 const
execute unless score q-8-0-1 q-8 matches ..1 run scoreboard players set q-8-0-1 q-8 1
