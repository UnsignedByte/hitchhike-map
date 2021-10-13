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
execute as @e[tag=npc-billy, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/billy/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-billy, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-billy, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-sam, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/sam/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sam, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sam, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-marc, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/marc/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-marc, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-marc, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-wheatish, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/wheatish/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-wheatish, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-wheatish, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-sawyer, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/sawyer/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-sawyer, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-sawyer, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-simon, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/simon/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-simon, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-simon, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-cashier, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/cashier/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-cashier, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-cashier, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-cameron, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/cameron/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-cameron, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-cameron, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__apple, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__apple/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__apple, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__apple, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__melon_slice, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__melon_slice/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__melon_slice, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__melon_slice, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__glow_berries, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__glow_berries/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__glow_berries, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__glow_berries, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__milk, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__milk/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__milk, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__milk, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__egg, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__egg/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__egg, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__egg, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__pickle, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__pickle/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__pickle, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__pickle, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__bamboo, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__bamboo/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__bamboo, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__bamboo, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__kelp, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__kelp/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__kelp, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__kelp, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__cane, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__cane/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__cane, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__cane, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__mysteryshrooms, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__mysteryshrooms/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__mysteryshrooms, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__mysteryshrooms, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__shiitake, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__shiitake/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__shiitake, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__shiitake, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__beet, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__beet/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__beet, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__beet, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__potato, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__potato/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__potato, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__potato, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__carrot, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__carrot/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__carrot, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__carrot, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__berries, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__berries/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__berries, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__berries, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__rawbeef, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__rawbeef/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__rawbeef, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__rawbeef, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__rawmutton, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__rawmutton/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__rawmutton, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__rawmutton, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__porkchop, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__porkchop/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__porkchop, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__porkchop, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__rabbit, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__rabbit/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__rabbit, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__rabbit, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__chicken, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__chicken/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__chicken, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__chicken, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__pufferfish, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__pufferfish/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__pufferfish, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__pufferfish, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__clownfish, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__clownfish/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__clownfish, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__clownfish, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__salmon, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__salmon/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__salmon, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__salmon, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__monster, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__monster/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__monster, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__monster, limit=1]

# Start a conversation if it was selected
execute as @e[tag=npc-__lacroix, tag=selected_npc, tag=!speaking, limit=1] at @s run function generated:npc/__lacroix/tick

# While in a conversation, make eye contact with the player.
execute as @e[tag=npc-__lacroix, tag=speaking, limit=1] at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity @a[tag=victim-of-dialogue-by-__lacroix, limit=1]

execute if score visitfriend quest-status matches 0.. run function generated:quests/visitfriend-tick

execute if score bread quest-status matches 0.. run function generated:quests/bread-tick

execute if score preparedness quest-status matches 0.. run function generated:quests/preparedness-tick

execute if score diet quest-status matches 0.. run function generated:quests/diet-tick

execute if score leather quest-status matches 0.. run function generated:quests/leather-tick

execute if score picnic quest-status matches 0.. run function generated:quests/picnic-tick

execute if score lacroix quest-status matches 0.. run function generated:quests/lacroix-tick

execute if score sdcard quest-status matches 0.. run function generated:quests/sdcard-tick
tag @a remove npc_selector
tag @e[tag=npc] remove selected_npc
