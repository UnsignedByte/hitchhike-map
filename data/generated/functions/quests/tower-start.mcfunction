scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[12] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"The tower isn\'t working. Take the electrical box key from the basement, climb up the tower, and get it working again."}},"extra":[{"text":"Electrical Fiddling","italic":true}," (",{"score":{"name":"tower","objective":"quest-status"}},"%)"]}'
scoreboard players set tower quest-status 0
scoreboard objectives add q-12 dummy
scoreboard players set q-12 q-12 0
scoreboard players set q-12-0 q-12 0
