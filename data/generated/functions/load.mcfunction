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
summon item 0 64 0 {Tags: ["quest_book"], Age: -32768, PickupDelay: 32767, Item: {id: "minecraft:written_book", Count: 1, tag: {display: {Name: '{"text":"Quest Book","color":"light_purple","italic":true}'}, title: "Quest Book", author: "", pages: ['[{"text":"Current Quests","color":"light_purple","underlined":true,"bold":true}]']}}}

tag @a remove victim-of-dialogue-by-billy

tag @a remove victim-of-dialogue-by-sam

tag @a remove victim-of-dialogue-by-marc

