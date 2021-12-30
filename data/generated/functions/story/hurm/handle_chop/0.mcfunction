fill 1181 128 276 1188 135 284 air destroy
clone 1181 63 276 1188 75 284 1181 123 276
particle minecraft:large_smoke 1184.5 129 280 -1.75 -3 -2 0 2000
scoreboard players set -tree0 hurm-chopped 1
summon item 1184.5 135 280 {Tags:["hurm-item"],PickupDelay:20,Age:-32768,Item:{id:"spruce_log",Count:1b}}
summon item 1184.5 135 280 {Tags:["hurm-item"],PickupDelay:20,Age:-32768,Item:{id:"stick",Count:1b}}
