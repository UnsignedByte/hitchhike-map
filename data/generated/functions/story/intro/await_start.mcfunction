execute unless entity @e[type=player,nbt={SelectedItem:{tag:{tvremote:1b}}}] as @e[tag=remote_rightclick_detect] at @s run tp @s ~ 0 ~
execute as @e[type=player,nbt={SelectedItem:{tag:{tvremote:1b}}}] at @s run function generated:story/intro/tp_remote_holder
execute as @e[tag=remote_rightclick_detect,nbt={HandItems:[{tag:{tvremote:1b}}]}] at @s run function generated:story/intro/_start

execute unless score start story-intro matches 1 run schedule function generated:story/intro/await_start 1t
