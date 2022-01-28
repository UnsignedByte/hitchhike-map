summon armor_stand ~ ~0.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["phone-click-detect","phone-click-detect-init"],DisabledSlots:4079422}
scoreboard players add -max phone-detect-id 1
scoreboard players operation @s phone-detect-id = -max phone-detect-id
scoreboard players operation @e[tag=phone-click-detect-init] phone-detect-id = -max phone-detect-id
tag @e remove phone-click-detect-init
