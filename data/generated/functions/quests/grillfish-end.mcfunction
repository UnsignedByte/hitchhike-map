data modify storage generated:quest_book current[10] set value ''
data modify storage generated:quest_book completed[10] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Grill some fish for Hurm\'s late-night snack!"}},"extra":[{"text":"Fish-n-chips","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set grillfish quest-status -1
function generated:quests/grillfish-reset
