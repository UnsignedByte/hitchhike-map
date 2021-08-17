scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[0] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Maintain a wheat-based diet (whole)."}},"extra":[{"text":"Whole Wheat","italic":true}," (",{"score":{"name":"bread","objective":"quest-status"}},"%)"]}'
scoreboard players set bread quest-status 0
scoreboard objectives add q-0 dummy
scoreboard players set q-0 q-0 0
scoreboard players set q-0-0 q-0 0
scoreboard objectives add s-0-0 minecraft.used:minecraft.bread
