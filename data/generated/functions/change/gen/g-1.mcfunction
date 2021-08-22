scoreboard players remove gen change 1
scoreboard players add count change 1
summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:nether_brick", tag: {display: {Name: '{"text":"1b","color":"#3d1e24"}', Lore: ['{"text":"Worth 0.01 BOV"}']}}},Age:0,PickupDelay:0}
execute positioned ~ ~ ~ if score gen change matches 1.. run function generated:change/gen/g-1
