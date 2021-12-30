scoreboard objectives add story-hurm dummy
scoreboard objectives add hurm-chopped minecraft.broken:minecraft.spruce_wood

kill @e[tag=hurm-mine-stand]
summon armor_stand 1239 115 314 {Invulnerable:1b,ShowArms:1b,Tags:["hurm-mine-stand"],Pose:{LeftArm:[330f,0f,0f],RightArm:[330f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{hurmpick:1b,display:{Name:'{"text":"Rusty Pickaxe","color":"#7d5441"}',Lore:['{"text":"Looks like its","color":"gray"}','{"text":"about to fall apart."}']},HideFlags:11,Damage:249,Enchantments:[{id:"minecraft:efficiency",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;1250539624,291852087,-1238399022,-150870650],Slot:"mainhand"}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5060903}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3159657}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4668985}}},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{}]}}]}

execute as @a[x=1238,y=111,z=312,dx=12,dy=10,dz=13,nbt={SelectedItem:{tag:{hurmpick:1b}}}] run item modify entity @s weapon.mainhand hitchhike:hurmpick_enable

execute as @a[nbt={SelectedItem:{tag:{hurmpick:1b}}}] unless entity @s[x=1238,y=111,z=312,dx=12,dy=10,dz=13] run item modify entity @s weapon.mainhand generated:disallow_mine