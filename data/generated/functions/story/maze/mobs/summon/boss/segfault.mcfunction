summon magma_cube ~ ~ ~ {PersistenceRequired:1b,Health:2048f,Size:3,Tags:["maze-mob","maze-boss"],CustomName:'{"text":"Segmentation Fault","color":"dark_purple","bold":true}',Attributes:[{Name:generic.max_health,Base:2048},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:30}]}
bossbar set maze:boss players @a
bossbar set maze:boss color purple
bossbar set maze:boss max 10000
bossbar set maze:boss visible true
bossbar set maze:boss style notched_6
schedule function hitchhike:story/sawyer/maze/bossbar 1t
