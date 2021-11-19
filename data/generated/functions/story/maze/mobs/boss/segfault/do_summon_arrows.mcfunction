execute at @e[tag=maze-boss-segfault,limit=1] positioned ~ ~1 ~ run playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 100 1.4
execute at @e[tag=maze-boss-segfault,limit=1] positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_arrows
