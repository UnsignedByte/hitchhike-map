effect give @a[nbt={SelectedItem:{tag:{weapon:"firewall"}}}] fire_resistance 10 0 true
execute at @a run tag @e[tag=maze-mob,type=!arrow,tag=!maze-host,type=!player,distance=..24,sort=nearest,limit=40] add maze-mob-safe
tp @e[tag=maze-mob,tag=!maze-mob-safe,type=!arrow,type=!player,tag=!maze-host,tag=!maze-boss] 0 -1000 0
tag @e remove maze-mob-safe
execute if score enabled maze matches 1 run scoreboard players set @a foodGoal 41
schedule function generated:scheduled/s-100 100t
