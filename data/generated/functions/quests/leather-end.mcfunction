data modify storage generated:quest_book current[3] set value ''
data modify storage generated:quest_book completed[3] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Wear 3 pieces of leather armor."}},"extra":[{"text":"Dressing Warm","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set leather quest-status -1
scoreboard objectives remove q-3
scoreboard objectives remove q-3-0-0
