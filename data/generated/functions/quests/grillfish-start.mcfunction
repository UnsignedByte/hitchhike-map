scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[11] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Grill some fish for Herb\'s late-night snack!"}},"extra":[{"text":"Fish-n-chips","italic":true}," (",{"score":{"name":"grillfish","objective":"quest-status"}},"%)"]}'
scoreboard players set grillfish quest-status 0
scoreboard objectives add q-11 dummy
scoreboard players set q-11 q-11 0
scoreboard players set q-11-0 q-11 0
scoreboard players set q-11-0-0 q-11 0
scoreboard players set q-11-0-1 q-11 0
