summon ender_pearl ^ ^ ^1 {Tags:["maze-mob-pearl-init","maze-mob"]}

execute store result score _thisX maze-mob-phase run data get entity @s Pos[0] 1000
execute store result score _thisY maze-mob-phase run data get entity @s Pos[1] 1000
execute store result score _thisZ maze-mob-phase run data get entity @s Pos[2] 1000
execute store result score _pearlX maze-mob-phase run data get entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Pos[0] 1000
execute store result score _pearlY maze-mob-phase run data get entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Pos[1] 1000
execute store result score _pearlZ maze-mob-phase run data get entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Pos[2] 1000

scoreboard players operation _pearlX maze-mob-phase -= _thisX maze-mob-phase
scoreboard players operation _pearlY maze-mob-phase -= _thisY maze-mob-phase
scoreboard players operation _pearlZ maze-mob-phase -= _thisZ maze-mob-phase

execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[0] double 0.001 run scoreboard players get _pearlX maze-mob-phase
execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[1] double 0.001 run scoreboard players get _pearlY maze-mob-phase
execute store result entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Motion[2] double 0.001 run scoreboard players get _pearlZ maze-mob-phase

data modify entity @e[type=ender_pearl,tag=maze-mob-pearl-init,limit=1] Owner set from entity @s UUID

tag @e[type=ender_pearl] remove maze-mob-pearl-init