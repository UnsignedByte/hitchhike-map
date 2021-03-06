tag @s remove maze-tile-init
setblock ~ ~-6 ~ air
setblock ~ ~-6 ~ minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"hitchhike:maze/tmptile",posX:-5,posY:1,posZ:-5,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~-7 ~ redstone_block
setblock ~ ~-7 ~ air
summon marker ~ ~15 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~9 ~ air
setblock ~ ~9 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:5,posY:1,posZ:-5,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~8 ~ redstone_block
setblock ~ ~8 ~ air
summon marker ~ ~30 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~24 ~ air
setblock ~ ~24 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:5,posY:1,posZ:5,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~23 ~ redstone_block
setblock ~ ~23 ~ air
summon marker ~ ~45 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~39 ~ air
setblock ~ ~39 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:-5,posY:1,posZ:5,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~38 ~ redstone_block
setblock ~ ~38 ~ air
summon marker ~ ~60 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~54 ~ air
setblock ~ ~54 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"LEFT_RIGHT",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:-5,posY:1,posZ:5,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~53 ~ redstone_block
setblock ~ ~53 ~ air
summon marker ~ ~75 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~69 ~ air
setblock ~ ~69 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"LEFT_RIGHT",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:-5,posY:1,posZ:-5,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~68 ~ redstone_block
setblock ~ ~68 ~ air
summon marker ~ ~90 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~84 ~ air
setblock ~ ~84 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"LEFT_RIGHT",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:5,posY:1,posZ:-5,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~83 ~ redstone_block
setblock ~ ~83 ~ air
summon marker ~ ~105 ~ {Tags:["maze-tile","maze-tile-dupe-init"]}
setblock ~ ~99 ~ air
setblock ~ ~99 ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"LEFT_RIGHT",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:5,posY:1,posZ:5,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}
setblock ~ ~98 ~ redstone_block
setblock ~ ~98 ~ air
scoreboard players operation @e[tag=maze-tile-dupe-init] maze-tile-type = @s maze-tile-type
tag @e remove maze-tile-dupe-init
