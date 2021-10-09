#> Front Door
execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run title @a actionbar [{"text":"The front door is locked. Maybe look for a key?"}]
execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run setblock 1014 63 51 minecraft:redstone_block

setblock 1014 63 51 air

#> Back Door
execute unless block 1007 65 65 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run title @a actionbar [{"text":"The back door is locked. Maybe look for a key?"}]
execute unless block 1007 65 65 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run setblock 1009 64 65 minecraft:redstone_block

setblock 1009 64 65 minecraft:air

schedule function hitchhike:story/intro/keep_external_lock 1t