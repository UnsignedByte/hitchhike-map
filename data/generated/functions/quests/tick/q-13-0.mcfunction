scoreboard players operation oq-13-0 q-13 = q-13-0 q-13
scoreboard players set q-13-0 q-13 0
execute if score @e[tag=npc-percivalainsworth,limit=1] dialogue-status matches -1 run scoreboard players add q-13-0 q-13 1
scoreboard players operation q-13-0 q-13 *= 100 const
scoreboard players operation q-13-0 q-13 *= 100 const
scoreboard players operation q-13-0 q-13 /= 100 const
execute unless score q-13-0 q-13 matches ..100 run scoreboard players set q-13-0 q-13 100
