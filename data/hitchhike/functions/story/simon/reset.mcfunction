# set door to closed state
clone 935 60 188 936 62 190 936 64 188
# Close gate
clone 907 54 184 918 55 192 907 64 184

scoreboard players set -door story-simon 0
scoreboard players set -held story-simon 0

# kill minecarts
kill @e[tag=simon-holder]

scoreboard players set start story-simon 0
function hitchhike:story/simon/await_start

kill @e[tag=inserted_sdcard,type=minecraft:glow_item_frame]