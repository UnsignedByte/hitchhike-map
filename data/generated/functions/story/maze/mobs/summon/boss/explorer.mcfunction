summon iron_golem ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Health:2048f,AngerTime:2147483647,Tags:["maze-mob","maze-boss","maze-boss-explorer"],CustomName:'{"text":"Internet Explorer","color":"aqua","bold":true}',Attributes:[{Name:generic.max_health,Base:2048},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.15},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:30},{Name:generic.armor_toughness,Base:4},{Name:generic.attack_knockback,Base:5}]}
scoreboard players set @e[tag=maze-boss,sort=nearest,limit=1,distance=..0.1] boss-stage -1
bossbar set maze:boss players @a
bossbar set maze:boss color purple
bossbar set maze:boss max 30000
bossbar set maze:boss visible true
bossbar set maze:boss style notched_6
schedule function hitchhike:story/sawyer/maze/bossbar 1t
