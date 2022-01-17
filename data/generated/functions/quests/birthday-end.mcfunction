data modify storage generated:quest_book current[1] set value ''
data modify storage generated:quest_book completed[1] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Wish sis a happy birthday!"}},"extra":[{"text":"Birthday Wishes","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set birthday quest-status -1
function generated:quests/birthday-reset
