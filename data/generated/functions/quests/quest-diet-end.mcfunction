data modify storage generated:quest_book current[1] set value ''
data modify storage generated:quest_book completed[1] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 500 pieces of meat (cooked, of course) and 500 vegetables"}},"extra":[{"text":"Balanced Diet","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard objectives remove q-1
scoreboard players reset diet quest-status
scoreboard objectives remove q-1-0-0-0
scoreboard objectives remove q-1-0-0-1
scoreboard objectives remove q-1-0-0-2
scoreboard objectives remove q-1-0-1-0
scoreboard objectives remove q-1-0-1-1
scoreboard objectives remove q-1-0-1-2
