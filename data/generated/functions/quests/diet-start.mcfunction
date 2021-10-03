scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[2] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 5 pieces of meat (cooked, of course) and 5 vegetables"}},"extra":[{"text":"Balanced Diet","italic":true}," (",{"score":{"name":"diet","objective":"quest-status"}},"%)"]}'
scoreboard players set diet quest-status 0
scoreboard objectives add q-2 dummy
scoreboard players set q-2 q-2 0
scoreboard players set q-2-0 q-2 0
scoreboard players set q-2-0-0 q-2 0
scoreboard players set q-2-0-0-0 q-2 0
scoreboard objectives add s-2-0-0-0 minecraft.used:minecraft.carrot
scoreboard players set q-2-0-0-1 q-2 0
scoreboard objectives add s-2-0-0-1 minecraft.used:minecraft.potato
scoreboard players set q-2-0-0-2 q-2 0
scoreboard objectives add s-2-0-0-2 minecraft.used:minecraft.beetroot
scoreboard players set q-2-0-1 q-2 0
scoreboard players set q-2-0-1-0 q-2 0
scoreboard objectives add s-2-0-1-0 minecraft.used:minecraft.cooked_beef
scoreboard players set q-2-0-1-1 q-2 0
scoreboard objectives add s-2-0-1-1 minecraft.used:minecraft.cooked_porkchop
scoreboard players set q-2-0-1-2 q-2 0
scoreboard objectives add s-2-0-1-2 minecraft.used:minecraft.cooked_chicken
