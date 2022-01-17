scoreboard players reset start story-intro

function generated:story/intro/_resettv

setblock 1005 63 52 redstone_block
setblock 1011 63 52 redstone_block
setblock 1011 63 66 redstone_block
setblock 1005 63 66 redstone_block

fill 1012 59 64 1012 60 64 air
setblock 1012 59 64 minecraft:birch_door[facing=east,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=east,half=upper,hinge=right,open=false,powered=false]

function hitchhike:story/intro/unlock_basement_door
function hitchhike:story/intro/lock_basement_door

function hitchhike:story/intro/unlock_external_doors

function hitchhike:story/intro/await_start

# Reset barrel in spawn room
# setblock 1009 65 57 air
# setblock 1009 65 57 minecraft:barrel[facing=west,open=false]{Items:[{Count:1b,Slot:24b,id:"minecraft:paper",tag:{display:{Lore:['{"text":"The keys are hidden","color":"gray"}','{"text":"behind the big map.","color":"gray"}','{"text":"Don\'t Forget!","color":"gray"}','{"text":" "}','{"text":"Love,","color":"gray"}','{"text":"Sis","color":"gray"}'],Name:'{"text":"Reminder"}'}}}]}
data modify block 1009 65 57 Items set from block 1009 58 57 Items

# Reset kitchen barrels
data modify block 1024 68 66 Items set from block 1024 63 66 Items
data modify block 1024 68 67 Items set from block 1024 63 67 Items

# Spawn room barrel
# data modify block 1010 59 54 Items set from block 1010 57 54 Items

schedule clear hitchhike:story/intro/detect_barrel_open
schedule clear hitchhike:story/intro/await_keybarrel_open

# Close opening behind painting
fill 1021 67 62 1021 68 63 minecraft:green_terracotta
# Put key back in chest and tv remote
function generated:story/intro/_resetstorages
# setblock 1024 66 61 minecraft:barrel[facing=west,open=false]{Items:[{Count:1b,Slot:13b,id:"minecraft:tripwire_hook",tag:{Enchantments:[{}],display:{Lore:['{"text":"Unlocks Doors","color":"dark_gray"}'],Name:'{"text":"House Key","color":"dark_aqua","bold":true}'}}}]}