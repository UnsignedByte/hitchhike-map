scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[10] set value '{"text":"","color":"dark_gray","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Craft and light a campfire at Herb\'s firepit. You might find wood and coal for a campfire to the northeast..."}},"extra":[{"text":"Making Fire","italic":true}," (",{"score":{"name":"campfire","objective":"quest-status"}},"%)"]}'
scoreboard players set campfire quest-status 0
scoreboard objectives add q-10 dummy
scoreboard players set q-10 q-10 0
scoreboard players set q-10-0 q-10 0
scoreboard players set q-10-0-0 q-10 0
scoreboard players set q-10-0-1 q-10 0
scoreboard players set q-10-0-2 q-10 0
scoreboard objectives add s-10-0-2 minecraft.crafted:minecraft.campfire
scoreboard players set q-10-0-3 q-10 0
scoreboard objectives add s-10-0-3 minecraft.used:minecraft.campfire
