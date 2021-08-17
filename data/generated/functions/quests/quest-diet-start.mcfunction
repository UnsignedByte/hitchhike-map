scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[1] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 5 pieces of meat (cooked, of course) and 5 vegetables"}},"extra":[{"text":"Balanced Diet","italic":true}," (",{"score":{"name":"diet","objective":"quest-status"}},"/1)"]}'
scoreboard objectives add q-1 dummy
scoreboard objectives add q-1-0-0-0 minecraft.used:minecraft.carrot
scoreboard objectives add q-1-0-0-1 minecraft.used:minecraft.potato
scoreboard objectives add q-1-0-0-2 minecraft.used:minecraft.beetroot
scoreboard objectives add q-1-0-1-0 minecraft.used:minecraft.cooked_beef
scoreboard objectives add q-1-0-1-1 minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add q-1-0-1-2 minecraft.used:minecraft.cooked_chicken
