data modify storage generated:quest_book current[0] set value ''
data modify storage generated:quest_book completed[0] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 5 pieces of bread."}},"extra":[{"text":"Whole Wheat","italic":true}," (5/5)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard objectives remove q-0
scoreboard players reset bread quest-status
scoreboard objectives remove q-0
