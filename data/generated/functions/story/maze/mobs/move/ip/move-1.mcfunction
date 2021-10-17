summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",ReapplicationDelay:10,Radius:0.5f,RadiusPerTick:0.05f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f,Color:16711680,Effects:[{Id:20b,Amplifier:2b,Duration:20,ShowParticles:0b}]}
effect give @p minecraft:levitation 3 3
data modify entity @s Motion[1] set value 1d
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.5
