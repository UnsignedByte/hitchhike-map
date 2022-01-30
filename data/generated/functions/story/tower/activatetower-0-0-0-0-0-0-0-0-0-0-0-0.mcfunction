scoreboard players set #phone-enabled vars 1
execute if entity @a[nbt={Inventory:[{tag:{phone:1b}}]}] run scoreboard players set @e[tag=npc-solomon] dialogue-status 2
execute unless entity @a[nbt={Inventory:[{tag:{phone:1b}}]}] run scoreboard players set @e[tag=npc-solomon] dialogue-status 3
