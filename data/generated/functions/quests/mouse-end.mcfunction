data modify storage generated:quest_book current[7] set value ''
data modify storage generated:quest_book completed[7] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Retrieve Chris\'s mouse from the bio lab."}},"extra":[{"text":"Missing Mouseketeer","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set mouse quest-status -1
scoreboard players set @e[tag=npc-sawyer, limit=1] dialogue-status 3
function generated:quests/mouse-reset
