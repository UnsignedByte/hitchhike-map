data modify storage generated:quest_book current[2] set value ''
data modify storage generated:quest_book completed[2] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 5 pieces of meat (cooked, of course) and 5 vegetables"}},"extra":[{"text":"Balanced Diet","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set diet quest-status -1
scoreboard objectives remove q-2
scoreboard objectives remove s-2-0-0-0
scoreboard objectives remove s-2-0-0-1
scoreboard objectives remove s-2-0-0-2
scoreboard objectives remove s-2-0-1-0
scoreboard objectives remove s-2-0-1-1
scoreboard objectives remove s-2-0-1-2
