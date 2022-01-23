# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-hurm] remove spoken-to
tag @a[tag=victim-of-dialogue-by-hurm] remove victim-of-dialogue-by-hurm
execute as @e[type=villager,tag=npc-hurm, limit=1] at @s run tp @s ~ ~ ~ -90 30
execute unless score grillfish quest-status matches -1 run scoreboard players set @e[type=villager,tag=npc-hurm, limit=1] dialogue-status -1
execute if score grillfish quest-status matches -1 run scoreboard players set @e[type=villager,tag=npc-hurm, limit=1] dialogue-status 3
tag @e[type=villager,tag=npc-hurm, limit=1] remove speaking
