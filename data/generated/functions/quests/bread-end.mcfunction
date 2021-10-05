data modify storage generated:quest_book current[1] set value ''
data modify storage generated:quest_book completed[1] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 500 pieces of bread."}},"extra":[{"text":"Whole Wheat","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set bread quest-status -1
scoreboard players set @e[tag=npc-wheatish, limit=1] dialogue-status 2
function generated:quests/bread-reset
