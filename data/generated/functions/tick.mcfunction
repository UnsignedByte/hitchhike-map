# update variables
scoreboard players set playercount vars 0
execute as @a run scoreboard players add playercount vars 1
# NPC dialogue
# Detect right clicks
execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:player_facing_npc
scoreboard players set @a npc-interact 0
# update entities with special tags
execute as @e[type=villager,tag=baby] run data modify entity @s Age set value -2
effect give @e[tag=invisible] minecraft:invisibility 2 0 true
execute as @e[type=area_effect_cloud,tag=aec] run data modify entity @s Duration set value 2147483647

# update quest books
title @a[scores={quest-book-upd=-1}] actionbar [{"text":"[","color":"light_purple","hoverEvent":{"action":"show_item","value":"{id: \"minecraft:written_book\", tag: {display: {Name: '{\"text\":\"Quest Book\",\"color\":\"light_purple\"}'}, resolved: 0b, title: \"Quest Book\", author: \"\", pages: ['[{\"text\":\"Current Quests\\\\n\",\"color\":\"light_purple\",\"underlined\":true,\"bold\":true},{\"nbt\":\"current[]\",\"storage\":\"generated:quest_book\",\"interpret\":true,\"separator\":\"\\\\n\"}]', '[{\"text\":\"Completed Quests\\\\n\",\"color\":\"light_purple\",\"underlined\":true,\"bold\":true},{\"nbt\":\"completed[]\",\"storage\":\"generated:quest_book\",\"interpret\":true,\"separator\":\"\\\\n\"}]']}}"},"extra":[{"text":"Quest Book","italic":true},"]"]},{"color":"white","text":" updated. Open it to view changes!"}]
scoreboard players set @a[scores={quest-book-upd=-1}] quest-book-upd 0
# Give new quest book to players who've dropped it
give @a[scores={quest-book-upd=-2147483648}] minecraft:written_book{display: {Name: '{"text":"Quest Book","color":"light_purple"}'}, resolved: 0b, title: "Quest Book", author: "", pages: ['[{"text":"Current Quests\\n","color":"light_purple","underlined":true,"bold":true},{"nbt":"current[]","storage":"generated:quest_book","interpret":true,"separator":"\\n"}]', '[{"text":"Completed Quests\\n","color":"light_purple","underlined":true,"bold":true},{"nbt":"completed[]","storage":"generated:quest_book","interpret":true,"separator":"\\n"}]']} 1
# Kill thrown quest books
execute as @a if score - quest-book-upd matches 1 unless score @s quest-book-upd matches -2147483648.. run scoreboard players set @s quest-book-upd -2147483648
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{title: "Quest Book"}}}] at @s run scoreboard players set @a[nbt=!{Inventory:[{id:"minecraft:written_book",tag:{title: "Quest Book"}}]}] quest-book-upd -2147483648
kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{title: "Quest Book"}}}]
execute as @a[scores={quest-book-upd=0},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title: "Quest Book"}}}] store result score @s quest-book-upd run item modify entity @s weapon.mainhand generated:update_quest_book
execute as @a[scores={quest-book-upd=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:written_book",tag:{title: "Quest Book"}}]}] store result score @s quest-book-upd run item modify entity @s weapon.offhand generated:update_quest_book


# Start a conversation if it was selected
execute at @e[tag=npc-billy, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-billy
tag @a[tag=victim-of-dialogue-by-billy, limit=1] remove npc_selector
tag @e[tag=npc-billy, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] as @e[tag=npc-billy, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/billy/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-billy, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-billy

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-billy, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-billy, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-sam
tag @a[tag=victim-of-dialogue-by-sam, limit=1] remove npc_selector
tag @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] as @e[tag=npc-sam, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/sam/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-sam

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sam, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sam, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-marc, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-marc
tag @a[tag=victim-of-dialogue-by-marc, limit=1] remove npc_selector
tag @e[tag=npc-marc, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-marc, tag=!spoken-to, limit=1] as @e[tag=npc-marc, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/marc/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-marc, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-marc, tag=!spoken-to, limit=1] as @e[tag=npc-marc, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/marc/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-marc, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-marc, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-marc

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-marc, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-marc, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-wheatish, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-wheatish
tag @a[tag=victim-of-dialogue-by-wheatish, limit=1] remove npc_selector
tag @e[tag=npc-wheatish, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] as @e[tag=npc-wheatish, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/wheatish/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] as @e[tag=npc-wheatish, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/wheatish/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] as @e[tag=npc-wheatish, limit=1] if score @s dialogue-status matches 2 run schedule function generated:npc/wheatish/2-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-wheatish, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-wheatish

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-wheatish, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-wheatish, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-sean, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-sean
tag @a[tag=victim-of-dialogue-by-sean, limit=1] remove npc_selector
tag @e[tag=npc-sean, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] as @e[tag=npc-sean, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/sean/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] as @e[tag=npc-sean, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/sean/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] as @e[tag=npc-sean, limit=1] if score @s dialogue-status matches 2 run schedule function generated:npc/sean/2-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-sean, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-sean

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sean, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sean, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-apple_sale, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-apple_sale
tag @a[tag=victim-of-dialogue-by-apple_sale, limit=1] remove npc_selector
tag @e[tag=npc-apple_sale, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-apple_sale, tag=!spoken-to, limit=1] as @e[tag=npc-apple_sale, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/apple_sale/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-apple_sale, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-apple_sale, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-apple_sale

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-apple_sale, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-apple_sale, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-berry_sale, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-berry_sale
tag @a[tag=victim-of-dialogue-by-berry_sale, limit=1] remove npc_selector
tag @e[tag=npc-berry_sale, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-berry_sale, tag=!spoken-to, limit=1] as @e[tag=npc-berry_sale, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/berry_sale/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-berry_sale, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-berry_sale, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-berry_sale

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-berry_sale, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-berry_sale, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-melon_sale, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-melon_sale
tag @a[tag=victim-of-dialogue-by-melon_sale, limit=1] remove npc_selector
tag @e[tag=npc-melon_sale, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-melon_sale, tag=!spoken-to, limit=1] as @e[tag=npc-melon_sale, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/melon_sale/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-melon_sale, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-melon_sale, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-melon_sale

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-melon_sale, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-melon_sale, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-cashier, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-cashier
tag @a[tag=victim-of-dialogue-by-cashier, limit=1] remove npc_selector
tag @e[tag=npc-cashier, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-cashier, tag=!spoken-to, limit=1] as @e[tag=npc-cashier, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/cashier/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-cashier, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-cashier, tag=!spoken-to, limit=1] as @e[tag=npc-cashier, limit=1] if score @s dialogue-status matches 5 run schedule function generated:npc/cashier/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-cashier, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-cashier, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-cashier

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-cashier, tag=speaking, limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-cashier, limit=1]

execute if score bread quest-status matches 0.. run function generated:quests/bread-tick

execute if score diet quest-status matches 0.. run function generated:quests/diet-tick

execute if score leather quest-status matches 0.. run function generated:quests/leather-tick
tag @a remove npc_selector
tag @e[tag=npc] remove selected_npc
