data modify storage generated:quest_book current[6] set value ''
data modify storage generated:quest_book completed[6] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Get Simon some LaCroix sparkling water."}},"extra":[{"text":"LaCroix Delivery","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set lacroix quest-status -1
function generated:quests/lacroix-reset
