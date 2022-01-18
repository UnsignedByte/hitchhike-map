scoreboard players remove gen change 10
scoreboard players add count change 10
summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:copper_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"10b","color":"#bf5935"}', Lore: ['{"text":"Worth 0.10 BCK"}']}}},Age:0,PickupDelay:0}
execute positioned ~ ~ ~ if score gen change matches 10.. run function generated:change/gen/g-10
