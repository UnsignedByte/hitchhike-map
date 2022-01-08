execute unless block 1007 65 65 minecraft:dark_oak_door[facing=south,half=lower,hinge=left,open=false,powered=false] run title @a actionbar [{"text":"The back door is locked. Maybe look for a key?"}]
execute unless block 1007 65 65 minecraft:dark_oak_door[facing=south,half=lower,hinge=left,open=false,powered=false] run setblock 1009 64 65 minecraft:redstone_block
setblock 1009 64 65 air
