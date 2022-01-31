data modify storage generated:quest_book current[10] set value ''
data modify storage generated:quest_book completed[10] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Craft and light a campfire at Herb\'s firepit."}},"extra":[{"text":"Making Fire","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set campfire quest-status -1
function generated:quests/campfire-reset
