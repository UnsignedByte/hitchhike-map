scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[10] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Decorrupt the SD Card given by Simon. Don\'t know how? Maybe someone familiar with programming would know better..."}},"extra":[{"text":"Decorruption","italic":true}," (",{"score":{"name":"sdcard","objective":"quest-status"}},"%)"]}'
scoreboard players set sdcard quest-status 0
scoreboard objectives add q-10 dummy
scoreboard players set q-10 q-10 0
scoreboard players set q-10-0 q-10 0
scoreboard players set q-10-0-0 q-10 0
scoreboard players set q-10-0-1 q-10 0
