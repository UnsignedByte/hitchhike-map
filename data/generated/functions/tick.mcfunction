# update variables
scoreboard players set playercount vars 0
execute as @a run scoreboard players add playercount vars 1
# NPC dialogue
# Detect right clicks
execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:npc/detect_interact
scoreboard players set @a npc-interact 0
# make names visible only in range
execute as @e[tag=npc] run data modify entity @s CustomNameVisible set value 0
execute at @a as @e[tag=npc,distance=..10] run data modify entity @s CustomNameVisible set value 1

# update entities with special tags
execute as @e[type=villager,tag=baby] run data modify entity @s Age set value -2
effect give @e[tag=invisible] minecraft:invisibility 2 0 true
execute as @e[type=area_effect_cloud,tag=aec] run data modify entity @s Duration set value 2147483647

# update quest books
title @a[scores={quest-book-upd=-1}] actionbar [{"text":"[","color":"light_purple","hoverEvent":{"action":"show_item","value":"{id: \"minecraft:written_book\", tag: {display: {Name: '{\"text\":\"Quest Book\",\"color\":\"light_purple\"}'}, resolved: 0b, title: \"Quest Book\", author: \"\", pages: ['[{\"text\":\"Current Quests\\\\n\",\"color\":\"light_purple\",\"underlined\":true,\"bold\":true},{\"nbt\":\"current[]\",\"storage\":\"generated:quest_book\",\"interpret\":true,\"separator\":\"\\\\n\"}]', '[{\"text\":\"Completed Quests\\\\n\",\"color\":\"light_purple\",\"underlined\":true,\"bold\":true},{\"nbt\":\"completed[]\",\"storage\":\"generated:quest_book\",\"interpret\":true,\"separator\":\"\\\\n\"}]']}}"},"extra":[{"text":"Quest Book","italic":true},"]"]},{"color":"white","text":" updated. Open it to view changes!"}]
scoreboard players set @a[scores={quest-book-upd=-1}] quest-book-upd 0
# prevent death of thrown quest books
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{title: "Quest Book"}}},nbt=!{Age:-32768}] run data modify entity @s Age set value -32768
execute as @a if score - quest-book-upd matches 1 unless score @s quest-book-upd matches -2147483648.. run give @s minecraft:written_book{display: {Name: '{"text":"Quest Book","color":"light_purple"}'}, resolved: 0b, title: "Quest Book", author: "", pages: ['[{"text":"Current Quests\\n","color":"light_purple","underlined":true,"bold":true},{"nbt":"current[]","storage":"generated:quest_book","interpret":true,"separator":"\\n"}]', '[{"text":"Completed Quests\\n","color":"light_purple","underlined":true,"bold":true},{"nbt":"completed[]","storage":"generated:quest_book","interpret":true,"separator":"\\n"}]']} 1
execute if score - quest-book-upd matches 1 run scoreboard players add @a quest-book-upd 0
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
execute as @e[tag=npc-billy, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-billy, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-sam
tag @a[tag=victim-of-dialogue-by-sam, limit=1] remove npc_selector
tag @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] as @e[tag=npc-sam, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/sam/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-sam, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-sam

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sam, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sam, limit=1]

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
execute as @e[tag=npc-marc, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-marc, limit=1]

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
execute as @e[tag=npc-wheatish, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-wheatish, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-sawyer, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-sawyer
tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] remove npc_selector
tag @e[tag=npc-sawyer, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] as @e[tag=npc-sawyer, limit=1] if score @s dialogue-status matches 3 run schedule function generated:npc/sawyer/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] as @e[tag=npc-sawyer, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/sawyer/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] as @e[tag=npc-sawyer, limit=1] if score @s dialogue-status matches 2 run schedule function generated:npc/sawyer/2-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-sawyer

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sawyer, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sawyer, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-simon, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-simon
tag @a[tag=victim-of-dialogue-by-simon, limit=1] remove npc_selector
tag @e[tag=npc-simon, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] as @e[tag=npc-simon, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/simon/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] as @e[tag=npc-simon, limit=1] if score @s dialogue-status matches 2 run schedule function generated:npc/simon/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] as @e[tag=npc-simon, limit=1] if score @s dialogue-status matches 3 run schedule function generated:npc/simon/2-00 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] as @e[tag=npc-simon, limit=1] if score @s dialogue-status matches 4 run schedule function generated:npc/simon/3-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-simon, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-simon

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-simon, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-simon, limit=1]

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
execute as @e[tag=npc-cashier, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-cashier, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-cameron, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-cameron
tag @a[tag=victim-of-dialogue-by-cameron, limit=1] remove npc_selector
tag @e[tag=npc-cameron, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-cameron, tag=!spoken-to, limit=1] as @e[tag=npc-cameron, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/cameron/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-cameron, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-cameron, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-cameron

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-cameron, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-cameron, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-apple, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-apple
tag @a[tag=victim-of-dialogue-by-apple, limit=1] remove npc_selector
tag @e[tag=npc-apple, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-apple, tag=!spoken-to, limit=1] as @e[tag=npc-apple, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/apple/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-apple, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-apple, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-apple

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-apple, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-apple, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-melon_slice, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-melon_slice
tag @a[tag=victim-of-dialogue-by-melon_slice, limit=1] remove npc_selector
tag @e[tag=npc-melon_slice, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-melon_slice, tag=!spoken-to, limit=1] as @e[tag=npc-melon_slice, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/melon_slice/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-melon_slice, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-melon_slice, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-melon_slice

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-melon_slice, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-melon_slice, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-glow_berries, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-glow_berries
tag @a[tag=victim-of-dialogue-by-glow_berries, limit=1] remove npc_selector
tag @e[tag=npc-glow_berries, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-glow_berries, tag=!spoken-to, limit=1] as @e[tag=npc-glow_berries, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/glow_berries/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-glow_berries, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-glow_berries, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-glow_berries

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-glow_berries, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-glow_berries, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-milk, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-milk
tag @a[tag=victim-of-dialogue-by-milk, limit=1] remove npc_selector
tag @e[tag=npc-milk, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-milk, tag=!spoken-to, limit=1] as @e[tag=npc-milk, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/milk/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-milk, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-milk, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-milk

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-milk, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-milk, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-egg, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-egg
tag @a[tag=victim-of-dialogue-by-egg, limit=1] remove npc_selector
tag @e[tag=npc-egg, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-egg, tag=!spoken-to, limit=1] as @e[tag=npc-egg, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/egg/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-egg, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-egg, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-egg

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-egg, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-egg, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-pickle, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-pickle
tag @a[tag=victim-of-dialogue-by-pickle, limit=1] remove npc_selector
tag @e[tag=npc-pickle, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-pickle, tag=!spoken-to, limit=1] as @e[tag=npc-pickle, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/pickle/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-pickle, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-pickle, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-pickle

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-pickle, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-pickle, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-monster, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-monster
tag @a[tag=victim-of-dialogue-by-monster, limit=1] remove npc_selector
tag @e[tag=npc-monster, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-monster, tag=!spoken-to, limit=1] as @e[tag=npc-monster, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/monster/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-monster, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-monster, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-monster

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-monster, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-monster, limit=1]

# Start a conversation if it was selected
execute at @e[tag=npc-lacroix, tag=selected_npc, tag=!speaking, limit=1] run tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-lacroix
tag @a[tag=victim-of-dialogue-by-lacroix, limit=1] remove npc_selector
tag @e[tag=npc-lacroix, tag=selected_npc, tag=!speaking, limit=1] add speaking
execute store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-lacroix, tag=!spoken-to, limit=1] as @e[tag=npc-lacroix, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/lacroix/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-lacroix, tag=!spoken-to, limit=1] add spoken-to
scoreboard players set dialogue-begun dialogue-status 0

tag @a[tag=victim-of-dialogue-by-lacroix, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-lacroix

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-lacroix, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-lacroix, limit=1]

execute if score visitfriend quest-status matches 0.. run function generated:quests/visitfriend-tick

execute if score bread quest-status matches 0.. run function generated:quests/bread-tick

execute if score preparedness quest-status matches 0.. run function generated:quests/preparedness-tick

execute if score diet quest-status matches 0.. run function generated:quests/diet-tick

execute if score leather quest-status matches 0.. run function generated:quests/leather-tick

execute if score picnic quest-status matches 0.. run function generated:quests/picnic-tick
tag @a remove npc_selector
tag @e[tag=npc] remove selected_npc
