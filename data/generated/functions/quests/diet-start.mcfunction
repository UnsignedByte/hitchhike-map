scoreboard players set @a quest-book-upd -1
data modify storage generated:quest_book current[3] set value '{"text":"","color":"dark_green","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":{"text":"Fill your stomach! Remember to keep a balanced diet. How will Simon know if you finished this? A mystery."}},"extra":[{"text":"Full Stomach","italic":true}," (",{"score":{"name":"diet","objective":"quest-status"}},"%)"]}'
scoreboard players set diet quest-status 0
scoreboard objectives add q-3 dummy
scoreboard players set q-3 q-3 0
scoreboard players set q-3-0 q-3 0
scoreboard players set q-3-0-0 q-3 0
scoreboard players set q-3-0-0-0 q-3 0
scoreboard objectives add s-3-0-0-0 minecraft.used:minecraft.carrot
scoreboard players set q-3-0-0-1 q-3 0
scoreboard objectives add s-3-0-0-1 minecraft.used:minecraft.baked_potato
scoreboard players set q-3-0-0-2 q-3 0
scoreboard objectives add s-3-0-0-2 minecraft.used:minecraft.beetroot
scoreboard players set q-3-0-1 q-3 0
scoreboard players set q-3-0-1-0 q-3 0
scoreboard objectives add s-3-0-1-0 minecraft.used:minecraft.cooked_beef
scoreboard players set q-3-0-1-1 q-3 0
scoreboard objectives add s-3-0-1-1 minecraft.used:minecraft.cooked_porkchop
scoreboard players set q-3-0-1-2 q-3 0
scoreboard objectives add s-3-0-1-2 minecraft.used:minecraft.cooked_chicken
scoreboard players set q-3-0-1-3 q-3 0
scoreboard objectives add s-3-0-1-3 minecraft.used:minecraft.cooked_rabbit
scoreboard players set q-3-0-1-4 q-3 0
scoreboard objectives add s-3-0-1-4 minecraft.used:minecraft.cooked_mutton
scoreboard players set q-3-0-2 q-3 0
scoreboard players set q-3-0-2-0 q-3 0
scoreboard objectives add s-3-0-2-0 minecraft.used:minecraft.sweet_berries
scoreboard players set q-3-0-2-1 q-3 0
scoreboard objectives add s-3-0-2-1 minecraft.used:minecraft.apple
scoreboard players set q-3-0-2-2 q-3 0
scoreboard objectives add s-3-0-2-2 minecraft.used:minecraft.glow_berries
scoreboard players set q-3-0-2-3 q-3 0
scoreboard objectives add s-3-0-2-3 minecraft.used:minecraft.melon_slice
scoreboard players set q-3-0-3 q-3 0
scoreboard objectives add q-3-0-3 dummy
