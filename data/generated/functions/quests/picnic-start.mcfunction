scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[6] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Make sure you have enough food for a mid-hike snack!"}},"extra":[{"text":"Picnic Packing","italic":true}," (",{"score":{"name":"picnic","objective":"quest-status"}},"%)"]}'
scoreboard players set picnic quest-status 0
scoreboard objectives add q-6 dummy
scoreboard players set q-6 q-6 0
scoreboard players set q-6-0 q-6 0
scoreboard players set q-6-0-0 q-6 0
scoreboard objectives add q-6-0-0 dummy
