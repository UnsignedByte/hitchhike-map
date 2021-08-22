scoreboard players remove gen change 5
scoreboard players add count change 5
summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:brick", tag: {display: {Name: '{"text":"5b","color":"#7d3d2b"}', Lore: ['{"text":"Worth 0.05 BOV"}']}}},Age:0,PickupDelay:0}
execute positioned ~ ~ ~ if score gen change matches 5.. run function generated:change/gen/g-5
