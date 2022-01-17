scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[4] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Remember to be prepared for your hike! Simon demands it. Make sure you are (1.) not hiking on an empty stomach, (2.) properly dressed, and (3.) have a mid-hike snack planned!"}},"extra":[{"text":"Preparing & Planning","italic":true}," (",{"score":{"name":"preparedness","objective":"quest-status"}},"%)"]}'
scoreboard players set preparedness quest-status 0
scoreboard objectives add q-4 dummy
scoreboard players set q-4 q-4 0
scoreboard players set q-4-0 q-4 0
scoreboard players set q-4-0-0 q-4 0
scoreboard players set q-4-0-1 q-4 0
scoreboard objectives add q-4-0-1 dummy
