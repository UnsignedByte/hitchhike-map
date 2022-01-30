particle minecraft:end_rod -75.0 67 88.5 1 0.8 0.3 0 5
execute if entity @a[x=-77,y=65,z=88,dx=3,dy=2,dz=0] as @a[x=-127,y=64,z=-14,dx=103,dy=10,dz=103] run function hitchhike:story/intro/lobbytp
particle minecraft:end_rod -205.0 66 90.5 1 0.8 0.3 0 5
tp @a[x=-207,y=64,z=90,dx=3,dy=3,dz=0] -75.0 65 -55.0 180 0
execute if score #map-finished vars matches 1 run particle minecraft:end_rod -75.0 67 -12.5 1 0.8 0.3 0 5
execute if score #map-finished vars matches 1 run tp @a[x=-77,y=65,z=-13,dx=3,dy=3,dz=0] -196 64 -10 -90 0
execute unless entity @a[x=900,y=55,z=-80,dx=15,dy=2,dz=2] run scoreboard players set door fishjar 0
execute if entity @a[x=906,y=55,z=-80,dx=6,dy=2,dz=2] run scoreboard players set door fishjar 1
execute if score _doorenabled fishjar matches 1 unless score _door fishjar = door fishjar run function generated:story/fountain/jar/doortoggle
execute if score enabled maze matches 1 as @e[tag=maze-mob,tag=maze-pointer-marked] run function hitchhike:story/maze/weapons/pointer/handlemarked
execute at @e[tag=maze-pearl] run particle minecraft:firework ~ ~ ~ 0 0 0 1 0
execute as @e[tag=maze-freezefield] at @s run function generated:story/maze/mobs/boss/explorer/tick_freezefield
execute as @e[tag=maze-freezefield] at @s run function generated:story/maze/mobs/boss/explorer/tick_freezefield
execute as @e[tag=maze-garbagecollector-minion-summon] at @s run function generated:story/maze/mobs/boss/garbagecollector/summoner_tick
execute as @e[tag=maze-warp-display] at @s run function generated:story/maze/mobs/boss/garbagecollector/warp_display
execute as @e[tag=maze-warp-root] at @s run function generated:story/maze/mobs/boss/garbagecollector/warp_inward
execute as @e[tag=maze-freezefield] at @s run function generated:story/maze/mobs/boss/explorer/tick_freezefield
# update quest books
title @a[scores={quest-book-upd=-1}] actionbar [{"text":"[","color":"light_purple","hoverEvent":{"action":"show_item","value":"{id: \"minecraft:written_book\", tag: {display: {Name: '{\"text\":\"Quest Book\",\"color\":\"light_purple\"}'}, resolved: 0b, title: \"Quest Book\", author: \"\", pages: ['[{\"text\":\"Current Quests\\\\n\",\"color\":\"dark_blue\",\"underlined\":true,\"bold\":true},{\"text\":\"(Hover for more info)\\\\n\",\"color\":\"gray\",\"bold\":false,\"underlined\":false},{\"nbt\":\"current[]\",\"storage\":\"generated:quest_book\",\"interpret\":true,\"separator\":\"\\\\n\"}]', '[{\"text\":\"Completed Quests\\\\n\\\\n\",\"color\":\"dark_blue\",\"underlined\":true,\"bold\":true},{\"nbt\":\"completed[]\",\"storage\":\"generated:quest_book\",\"interpret\":true,\"separator\":\"\\\\n\"}]']}}"},"extra":[{"text":"Quest Book","italic":true},"]"]},{"color":"white","text":" updated. Open it to view changes!"}]
scoreboard players set @a[scores={quest-book-upd=-1}] quest-book-upd 0
schedule function generated:scheduled/s-5 5t
