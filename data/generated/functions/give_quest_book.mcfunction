# Clear quest book from all players.
clear @a minecraft:written_book{title:"Quest Book"}
# Give new quest book
give @a written_book{display: {Name: '{"text":"Quest Book","color":"light_purple","italic":true}'}, title: "Quest Book", author: "", pages: ['{"nbt":"pages[]","storage":"generated:quest_book","interpret":true}']}
