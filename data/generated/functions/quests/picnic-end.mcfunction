data modify storage generated:quest_book current[7] set value ''
data modify storage generated:quest_book completed[7] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Bring a picnic of healthy foods with you. Remember, you still have to bring the food back to Simon."}},"extra":[{"text":"Picnic Packing","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set picnic quest-status -1
function generated:quests/picnic-reset
