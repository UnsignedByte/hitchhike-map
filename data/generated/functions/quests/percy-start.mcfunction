scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[2] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Complete your daily chat with Percival."}},"extra":[{"text":"Sugar Buddy..?","italic":true}," (",{"score":{"name":"percy","objective":"quest-status"}},"%)"]}'
scoreboard players set percy quest-status 0
scoreboard objectives add q-2 dummy
scoreboard players set q-2 q-2 0
scoreboard players set q-2-0 q-2 0
