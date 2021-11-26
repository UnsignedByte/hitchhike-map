summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.1f,RadiusOnUse:-1f,Duration:200,DurationOnUse:0f,Effects:[{Id:7b,Amplifier:1b,Duration:100}]}
effect give @s resistance 10 10 true
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 10 0.3
