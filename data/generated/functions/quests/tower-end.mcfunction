data modify storage generated:quest_book current[12] set value ''
data modify storage generated:quest_book completed[12] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"The tower isn\'t working. Take the electrical box key from the basement, climb up the tower, and get it working again."}},"extra":[{"text":"Electrical Fiddling","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set tower quest-status -1
function generated:quests/tower-reset
