scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[4] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Make sure you have enough food for a mid-hike snack!"}},"extra":[{"text":"Picnic Packing","italic":true}," (",{"score":{"name":"picnic","objective":"quest-status"}},"%)"]}'
scoreboard players set picnic quest-status 0
scoreboard objectives add q-4 dummy
scoreboard players set q-4 q-4 0
scoreboard players set q-4-0 q-4 0
scoreboard objectives add q-4-0 dummy
