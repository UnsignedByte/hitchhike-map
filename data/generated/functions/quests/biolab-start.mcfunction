scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[7] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Retrieve Chris\'s mouse from the bio lab."}},"extra":[{"text":"Missing Mouseketeer","italic":true}," (",{"score":{"name":"biolab","objective":"quest-status"}},"%)"]}'
scoreboard players set biolab quest-status 0
scoreboard objectives add q-7 dummy
scoreboard players set q-7 q-7 0
scoreboard players set q-7-0 q-7 0
scoreboard players set q-7-0-0 q-7 0
scoreboard players set q-7-0-1 q-7 0
