fill 1172 130 291 1179 136 299 air destroy
clone 1172 65 291 1179 76 299 1172 125 291
particle minecraft:large_smoke 1175.5 130.5 295 -1.75 -2.75 -2 0 2000
scoreboard players set -tree2 hurm-chopped 1
summon item 1175.5 136 295 {Tags:["hurm-item"],PickupDelay:20,Age:-32768,Item:{id:"spruce_log",Count:1b}}
summon item 1175.5 136 295 {Tags:["hurm-item"],PickupDelay:20,Age:-32768,Item:{id:"stick",Count:1b}}
