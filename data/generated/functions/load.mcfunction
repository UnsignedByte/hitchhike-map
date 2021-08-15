# Stop all conversations, if possible.
tag @a remove spoken-to
tag @e[tag=npc] remove speaking

# Villager interaction detection
scoreboard objectives add npc-interact minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add dialogue-status dummy


# Quest scoreboard setup
scoreboard objectives add quest-status dummy

# Summon quest book template entity
kill @e[tag=quest_book]
data modify storage generated:quest_book quests set value ['{"text":"Current Quests\\n","color":"light_purple","underlined":true,"bold":true}']
data merge storage generated:quest_book_template {display: {Name: '{"text":"Quest Book","color":"light_purple","italic":true}'}, title: "Quest Book", author: "", pages: ['{"nbt":"quests[]","storage":"generated:quest_book","interpret":true}']}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

