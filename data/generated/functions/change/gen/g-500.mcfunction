scoreboard players remove gen change 500
scoreboard players add count change 500
summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:netherite_ingot", tag: {display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BOV"}']}}},Age:0,PickupDelay:0}
execute positioned ~ ~ ~ if score gen change matches 500.. run function generated:change/gen/g-500
