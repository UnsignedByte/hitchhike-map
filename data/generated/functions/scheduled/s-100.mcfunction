effect give @e[tag=npc-samsung] minecraft:blindness 10 0 false
execute if score hurm-done vars matches 1 unless entity @e[tag=lake-boat,type=boat,x=1073,y=114,z=390,dx=1,dz=2] run summon boat 1074.0 113.5 391.5 {Invulnerable:1b,Type:"spruce",Tags:["lake-boat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["aec","lake-boat"]}]}
execute if score enabled maze matches 1 run effect give @a[tag=maze-mob,nbt={SelectedItem:{tag:{weapon:"firewall"}}}] fire_resistance 10 0 true
execute at @a run tag @e[tag=maze-mob,type=!arrow,tag=!maze-host,type=!player,distance=..24,sort=nearest,limit=40] add maze-mob-safe
tp @e[tag=maze-mob,tag=!maze-mob-safe,type=!arrow,type=!player,tag=!maze-host,tag=!maze-boss] 0 -1000 0
tag @e remove maze-mob-safe
execute if score enabled maze matches 1 run scoreboard players set @a foodGoal 41
schedule function generated:scheduled/s-100 100t
