scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[2] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Make sure to dress warm!"}},"extra":[{"text":"Dressing Warm","italic":true}," (",{"score":{"name":"leather","objective":"quest-status"}},"%)"]}'
scoreboard players set leather quest-status 0
scoreboard objectives add q-2 dummy
scoreboard players set q-2 q-2 0
scoreboard players set q-2-0 q-2 0
scoreboard players set q-2-0-0 q-2 0
scoreboard objectives add q-2-0-0 dummy
