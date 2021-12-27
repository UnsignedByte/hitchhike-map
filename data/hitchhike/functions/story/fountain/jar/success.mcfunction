scoreboard players set @e[tag=npc-fishjar] dialogue-status 4
tag @e[tag=npc-fishjar] add selected_npc
execute positioned 914 55 -79 run tag @p add npc_selector

playsound minecraft:entity.player.levelup neutral @a 914 55 -79 1 0.5

execute as @e[type=item,tag=jar-coin] run data modify entity @s PickupDelay set value 80

summon firework_rocket 921 49 -76 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16765993],FadeColors:[I;2376598]},{Type:4,Flicker:1b,Colors:[I;1867860]}]}}}}
summon firework_rocket 927 49 -76 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16765993],FadeColors:[I;2376598]},{Type:4,Flicker:1b,Colors:[I;1867860]}]}}}}
summon firework_rocket 921 49 -82 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16765993],FadeColors:[I;2376598]},{Type:4,Flicker:1b,Colors:[I;1867860]}]}}}}
summon firework_rocket 927 49 -82 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16765993],FadeColors:[I;2376598]},{Type:4,Flicker:1b,Colors:[I;1867860]}]}}}}
