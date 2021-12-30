# loot spawn ~ ~ ~ mine 1243 123 318
summon item ~ ~0.5 ~ {Tags:["hurm-item"],PickupDelay:10,Age:-32768,Item:{id:"coal",Count:1b},Motion:[0.05d,0.1d,-0.03d]}
scoreboard players set -mined hurm-mined 1
scoreboard players set @a hurm-mined 0
kill @s