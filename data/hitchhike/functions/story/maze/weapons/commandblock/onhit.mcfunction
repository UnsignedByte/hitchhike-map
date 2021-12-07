data modify entity @s NoAI set value 1
scoreboard players set @s maze-weapon-age 100
scoreboard players set @s[tag=maze-boss] maze-weapon-age 20
tag @s add maze-mob-frozen

effect give @s glowing 1 0 true
effect give @s[tag=!maze-boss] glowing 5 0 true

playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.5