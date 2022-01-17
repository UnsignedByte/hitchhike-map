execute unless entity @a[nbt={SelectedItem:{tag:{tvremote:1b}}}] as @e[tag=remote_rightclick_detect] at @s run tp @s ~ 0 ~
execute as @a[nbt={SelectedItem:{tag:{tvremote:1b}}}] at @s run function generated:story/intro/tp_remote_holder
