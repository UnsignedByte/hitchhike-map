summon ravager ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Health:2048f,Tags:["maze-mob","maze-boss","maze-boss-garbagecollector"],CustomName:'{"text":"Garbage Collector","color":"dark_green","bold":true}',Attributes:[{Name:generic.max_health,Base:2048},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.05},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:30},{Name:generic.armor_toughness,Base:4},{Name:generic.attack_knockback,Base:0}]}
scoreboard players set @e[tag=maze-boss,sort=nearest,limit=1,distance=..0.1] boss-stage -1
bossbar set maze:boss players @a
bossbar set maze:boss color purple
bossbar set maze:boss max 40000
bossbar set maze:boss visible true
bossbar set maze:boss style notched_6
schedule function hitchhike:story/sawyer/maze/bossbar 1t
