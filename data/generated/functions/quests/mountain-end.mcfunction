data modify storage generated:quest_book current[3] set value ''
data modify storage generated:quest_book completed[3] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Make your way up the mountain."}},"extra":[{"text":"Rugged Adventure","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set mountain quest-status -1
function generated:quests/mountain-reset
