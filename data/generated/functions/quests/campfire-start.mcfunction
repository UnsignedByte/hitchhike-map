scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[9] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Craft and light a campfire at Hurm\'s firepit."}},"extra":[{"text":"Fire-lighting","italic":true}," (",{"score":{"name":"campfire","objective":"quest-status"}},"%)"]}'
scoreboard players set campfire quest-status 0
scoreboard objectives add q-9 dummy
scoreboard players set q-9 q-9 0
scoreboard players set q-9-0 q-9 0
scoreboard players set q-9-0-0 q-9 0
scoreboard players set q-9-0-1 q-9 0
scoreboard players set q-9-0-2 q-9 0
scoreboard objectives add s-9-0-2 minecraft.crafted:minecraft.campfire
scoreboard players set q-9-0-3 q-9 0
scoreboard objectives add s-9-0-3 minecraft.used:minecraft.campfire
