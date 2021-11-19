execute at @e[tag=maze-boss-segfault,limit=1] positioned ~ ~1 ~ run playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 100 1.4
effect give @e[tag=maze-boss-segfault,limit=1] resistance 2 10 true
effect give @e[tag=maze-boss-segfault,limit=1] regeneration 2 2 true
execute at @e[tag=maze-boss-segfault,limit=1] positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_arrows
