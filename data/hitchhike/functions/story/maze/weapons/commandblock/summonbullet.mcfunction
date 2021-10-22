summon shulker_bullet ~ ~ ~ {Steps:10,Tags:["maze-mob","maze-shulker-bullet","maze-shulker-bullet-init"],Passengers:[{id:"minecraft:marker",Tags:["maze-mob","maze-shulker-bullet-marker"]}],CustomName:'{"text":"@e[sort=random,limit=1]","color":"aqua","bold":true}'}

execute as @e[tag=maze-shulker-bullet-init] at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=random,limit=1] UUID

tag @e remove maze-shulker-bullet-init