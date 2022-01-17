scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[3] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Make your way up the mountain."}},"extra":[{"text":"Rugged Adventure","italic":true}," (",{"score":{"name":"mountain","objective":"quest-status"}},"%)"]}'
scoreboard players set mountain quest-status 0
scoreboard objectives add q-3 dummy
scoreboard players set q-3 q-3 0
scoreboard players set q-3-0 q-3 0
