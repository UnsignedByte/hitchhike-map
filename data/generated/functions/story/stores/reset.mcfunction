kill @e[type=armor_stand,tag=armorstand-clothes-display]
data modify storage hitchhike:stores welcome.safeway set value '"Hey, I hope you had a great time shopping!"'
data modify storage hitchhike:stores welcome.clothes set value '"Set on your new outfits? I\'ll ring them up for you right here!"'
summon armor_stand 978.75 64.5 -163.0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["armorstand-clothes-display"],Pose:{LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,5f]},Rotation:[-90F,0F],ArmorItems:[{},{},{},{}]}
