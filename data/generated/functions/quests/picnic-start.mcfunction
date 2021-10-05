scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[5] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Make sure you have enough food for a mid-hike snack!"}},"extra":[{"text":"Picnic Packing","italic":true}," (",{"score":{"name":"picnic","objective":"quest-status"}},"%)"]}'
scoreboard players set picnic quest-status 0
scoreboard objectives add q-5 dummy
scoreboard players set q-5 q-5 0
scoreboard players set q-5-0 q-5 0
scoreboard players set q-5-0-0 q-5 0
scoreboard objectives add q-5-0-0 dummy
scoreboard players set q-5-0-1 q-5 0
scoreboard objectives add q-5-0-1 dummy
