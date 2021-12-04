execute positioned ^-2 ^ ^2 run summon marker ~ ~ ~ {Tags:["maze-explorer-wave-init","maze-explorer-wave"]}
execute positioned ^-1 ^ ^2 run summon marker ~ ~ ~ {Tags:["maze-explorer-wave-init","maze-explorer-wave"]}
execute positioned ^0 ^ ^2 run summon marker ~ ~ ~ {Tags:["maze-explorer-wave-init","maze-explorer-wave"]}
execute positioned ^1 ^ ^2 run summon marker ~ ~ ~ {Tags:["maze-explorer-wave-init","maze-explorer-wave"]}
execute positioned ^2 ^ ^2 run summon marker ~ ~ ~ {Tags:["maze-explorer-wave-init","maze-explorer-wave"]}
execute rotated ~ 0 as @e[tag=maze-explorer-wave-init] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e remove maze-explorer-wave-init
