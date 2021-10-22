data modify entity @s NoAI set value 1
scoreboard players set @s maze-weapon-age 100
tag @s add maze-mob-frozen

effect give @s glowing 5 0 true

playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.5