scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[8] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Get Simon some LaCroix sparkling water."}},"extra":[{"text":"LaCroix Delivery","italic":true}," (",{"score":{"name":"lacroix","objective":"quest-status"}},"%)"]}'
scoreboard players set lacroix quest-status 0
scoreboard objectives add q-8 dummy
scoreboard players set q-8 q-8 0
scoreboard players set q-8-0 q-8 0
scoreboard players set q-8-0-0 q-8 0
scoreboard players set q-8-0-1 q-8 0
