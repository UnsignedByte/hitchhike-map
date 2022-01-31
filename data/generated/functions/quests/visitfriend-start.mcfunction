scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[2] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"The internet went down, but you don\'t know why. Luckily, you happen to have a programmer friend. Maybe pay them a visit (24 Pollocks Rd)?"}},"extra":[{"text":"Visit Chris","italic":true}," (",{"score":{"name":"visitfriend","objective":"quest-status"}},"%)"]}'
scoreboard players set visitfriend quest-status 0
scoreboard objectives add q-2 dummy
scoreboard players set q-2 q-2 0
scoreboard players set q-2-0 q-2 0
scoreboard players set q-2-0-0 q-2 0
scoreboard objectives add q-2-0-0 dummy
scoreboard players set q-2-0-1 q-2 0
