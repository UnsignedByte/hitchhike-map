scoreboard objectives add q-bread minecraft.used:minecraft.bread
scoreboard players set bread quest-status 0
scoreboard players set @a quest-book-upd 0
data modify storage generated:quest_book current[0] set value '{"text":"","color":"dark_green","hoverEvent":{"action":"show_text","contents":{"text":"Eat 5 pieces of bread."}},"extra":[{"text":"Whole Wheat","italic":true},"\\t(",{"score":{"name":"bread","objective":"quest-status"}},"/5)"]}'
