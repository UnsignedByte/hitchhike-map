data modify storage generated:quest_book current[4] set value ''
data modify storage generated:quest_book completed[4] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Bring a picnic of healthy foods with you."}},"extra":[{"text":"Picnic Packing","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set picnic quest-status -1
function generated:quests/picnic-reset
