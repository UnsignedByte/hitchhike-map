summon drowned ~ -10 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,IsBaby:1b,Tags:["invisible","lake-piranha","lake-piranha-init"],CustomName:'{"text":"piranha","color":"red"}',Attributes:[{Name:generic.follow_range,Base:30},{Name:generic.movement_speed,Base:0.9},{Name:generic.attack_damage,Base:15},{Name:zombie.spawn_reinforcements,Base:0}]}
summon tropical_fish ~ ~ ~ {Invulnerable:1b,Tags:["lake-piranha","lake-piranha-init"],Variant:118358272}
scoreboard players operation @e[tag=lake-piranha-init] piranha-id = max piranha-id
scoreboard players add max piranha-id 1
execute unless block ~ ~ ~ water unless block ~ ~ ~ air positioned ~ ~1 ~ run function generated:story/lake/piranha/summon/findwater
tp @e[tag=lake-piranha-init,type=drowned] ~ ~ ~
tag @e remove lake-piranha-init
