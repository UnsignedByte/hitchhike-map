data modify storage generated:quest_book current[3] set value ''
data modify storage generated:quest_book completed[3] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Remember to be prepared for your hike! Simon demands it. Make sure you are (1.) not hiking on an empty stomach, (2.) properly dressed, and (3.) have a mid-hike snack planned!"}},"extra":[{"text":"Preparing & Planning","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set preparedness quest-status -1
scoreboard players set @e[tag=npc-simon, limit=1] dialogue-status 3
function generated:quests/preparedness-reset
