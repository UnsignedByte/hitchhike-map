scoreboard players set @e[tag=npc-sawyer] dialogue-status 5
tag @e[tag=npc-sawyer] add selected_npc
execute positioned -1400.0 11 -150.0 run tag @p add npc_selector

gamerule doImmediateRespawn true
scoreboard players set enabled maze 1

team modify player collisionRule always
team modify player friendlyFire true

say bruh