data modify storage generated:quest_book current[5] set value ''
data modify storage generated:quest_book completed[5] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Wear 3 pieces of leather armor and show your new drip to Simon."}},"extra":[{"text":"Dressing Warm","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set leather quest-status -1
function generated:quests/leather-reset
