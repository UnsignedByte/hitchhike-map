# Handle the end of the conversation.
tag @a[tag=victim-of-dialogue-by-birthdayboy] remove spoken-to
tag @a[tag=victim-of-dialogue-by-birthdayboy] remove victim-of-dialogue-by-birthdayboy
execute as @e[tag=npc-birthdayboy, limit=1] at @s run tp @s ~ ~ ~ -180 30
scoreboard players set @e[tag=npc-birthdayboy, limit=1] dialogue-status -1
tag @e[tag=npc-birthdayboy, limit=1] remove speaking
