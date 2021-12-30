scoreboard players set @a hurm-chopped 0
scoreboard players add -chopped hurm-chopped 1
execute if -tree0 hurm-chopped matches 0 unless blocks 1181 93 276 1188 105 284 1181 123 276 all run function generated:story/hurm/handle_chop/0
execute if -tree1 hurm-chopped matches 0 unless blocks 1168 92 276 1177 105 285 1168 122 276 all run function generated:story/hurm/handle_chop/1
execute if -tree2 hurm-chopped matches 0 unless blocks 1172 95 291 1179 106 299 1172 125 291 all run function generated:story/hurm/handle_chop/2
