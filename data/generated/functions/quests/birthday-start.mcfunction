scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[0] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Wish sis a happy birthday!"}},"extra":[{"text":"Birthday Wishes","italic":true}," (",{"score":{"name":"birthday","objective":"quest-status"}},"%)"]}'
scoreboard players set birthday quest-status 0
scoreboard objectives add q-0 dummy
scoreboard players set q-0 q-0 0
scoreboard players set q-0-0 q-0 0
