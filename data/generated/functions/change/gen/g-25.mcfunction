scoreboard players remove gen change 25
scoreboard players add count change 25
summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:gold_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"25b","color":"#d99413"}', Lore: ['{"text":"Worth 0.25 BOV"}']}}},Age:0,PickupDelay:0}
execute positioned ~ ~ ~ if score gen change matches 25.. run function generated:change/gen/g-25
