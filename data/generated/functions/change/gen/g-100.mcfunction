scoreboard players remove gen change 100
scoreboard players add count change 100
summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:iron_ingot", tag: {display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BOV"}']}}},Age:0,PickupDelay:0}
execute positioned ~ ~ ~ if score gen change matches 100.. run function generated:change/gen/g-100
