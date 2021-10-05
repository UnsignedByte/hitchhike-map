data modify storage generated:quest_book current[2] set value ''
data modify storage generated:quest_book completed[2] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Remember to be prepared for your hike! Simon demands it."}},"extra":[{"text":"Preparing & Planning","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set preparedness quest-status -1
scoreboard players set @e[tag=npc-simon, limit=1] dialogue-status 3
function generated:quests/preparedness-reset
