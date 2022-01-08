execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false] run title @a actionbar [{"text":"The front door is locked. Maybe look for a key?"}]
execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false] run setblock 1014 63 51 minecraft:redstone_block
setblock 1014 63 51 air
