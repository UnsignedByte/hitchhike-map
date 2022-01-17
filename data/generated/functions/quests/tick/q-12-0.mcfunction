scoreboard players operation oq-12-0 q-12 = q-12-0 q-12
scoreboard players set q-12-0 q-12 0
execute if score @e[tag=npc-percivalainsworth,limit=1] dialogue-status matches -1 run scoreboard players add q-12-0 q-12 1
scoreboard players operation q-12-0 q-12 *= 100 const
scoreboard players operation q-12-0 q-12 *= 100 const
scoreboard players operation q-12-0 q-12 /= 100 const
execute unless score q-12-0 q-12 matches ..100 run scoreboard players set q-12-0 q-12 100
