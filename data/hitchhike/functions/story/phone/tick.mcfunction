execute as @e[tag=phone-click-detect,nbt={HandItems:[{tag:{phone:1b}}]}] run function generated:story/phone/takecall

execute as @e[type=player,nbt={SelectedItem:{tag:{phone:1b}}}] at @s run function generated:story/phone/handleholder
tp @e[tag=phone-click-detect,tag=!phone-click-detect-enabled] 0 0 0
tag @e remove phone-click-detect-enabled