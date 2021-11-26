particle minecraft:small_flame ~ ~2 ~ 0.25 4 0.25 0 50
particle lava ~ ~ ~ 0.25 0.25 0.25 0 3
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1
summon small_fireball ~ ~ ~ {HasVisualFire:0b,power:[0.0,-1.0,0.0],Item:{id:"minecraft:air",Count:1b}}
execute if predicate hitchhike:onetwelth run kill @s
