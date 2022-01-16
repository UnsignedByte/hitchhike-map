scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[0] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"The internet seems to have gone down, but you don\'t know why. Luckily, you happen to know a programmer friend. Maybe pay him a visit?"}},"extra":[{"text":"Phone-A-Friend","italic":true}," (",{"score":{"name":"visitfriend","objective":"quest-status"}},"%)"]}'
scoreboard players set visitfriend quest-status 0
scoreboard objectives add q-0 dummy
scoreboard players set q-0 q-0 0
scoreboard players set q-0-0 q-0 0
scoreboard objectives add q-0-0 dummy
