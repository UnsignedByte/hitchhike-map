data modify storage generated:quest_book current[2] set value ''
data modify storage generated:quest_book completed[2] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Fill your stomach! Remember to keep a balanced diet."}},"extra":[{"text":"Full Stomach","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set diet quest-status -1
function generated:quests/diet-reset
