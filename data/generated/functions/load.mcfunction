# Stop all conversations, if possible.
tag @a remove spoken-to
tag @e[tag=npc] remove speaking

tag @a remove victim-of-dialogue-by-billy

# Villager interaction detection
scoreboard objectives add npc-interact minecraft.custom:minecraft.talked_to_villager

tag @a remove victim-of-dialogue-by-sam

# Villager interaction detection
scoreboard objectives add npc-interact minecraft.custom:minecraft.talked_to_villager
