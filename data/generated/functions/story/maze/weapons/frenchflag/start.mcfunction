execute as @e[tag=maze-weapon-frenchflag-ticker-init] run data modify entity @s MarkerUUID set from entity @e[tag=maze-weapon-init,limit=1] UUID
tag @e remove maze-weapon-frenchflag-ticker
