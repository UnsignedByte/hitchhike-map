# update variables
scoreboard players set playercount vars 0
execute as @a run scoreboard players add playercount vars 1
# NPC dialogue
# Detect right clicks
execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:npc/detect_interact
scoreboard players set @a npc-interact 0

execute as @a if score - quest-book-upd matches 1 unless score @s quest-book-upd matches -2147483648.. run give @s minecraft:written_book{display: {Name: '{"text":"Quest Book","color":"light_purple"}'}, resolved: 0b, title: "Quest Book", author: "", pages: ['[{"text":"Current Quests\\n","color":"dark_blue","underlined":true,"bold":true},{"text":"(Hover for more info)\\n","color":"gray","bold":false,"underlined":false},{"nbt":"current[]","storage":"generated:quest_book","interpret":true,"separator":"\\n"}]', '[{"text":"Completed Quests\\n\\n","color":"dark_blue","underlined":true,"bold":true},{"nbt":"completed[]","storage":"generated:quest_book","interpret":true,"separator":"\\n"}]']} 1
execute if score - quest-book-upd matches 1 run scoreboard players add @a quest-book-upd 0
execute as @a[scores={quest-book-upd=0},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title: "Quest Book"}}}] store result score @s quest-book-upd run item modify entity @s weapon.mainhand generated:update_quest_book
execute as @a[scores={quest-book-upd=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:written_book",tag:{title: "Quest Book"}}]}] store result score @s quest-book-upd run item modify entity @s weapon.offhand generated:update_quest_book

execute as @e[tag=npc, tag=selected_npc, tag=!speaking] run function generated:npc/init_dialogue
execute as @e[tag=npc, tag=speaking, tag=!npc-unface] at @s run function generated:npc/speaking

execute if score birthday quest-status matches 0.. run function generated:quests/birthday-tick

execute if score mountain quest-status matches 0.. run function generated:quests/mountain-tick

execute if score visitfriend quest-status matches 0.. run function generated:quests/visitfriend-tick

execute if score preparedness quest-status matches 0.. run function generated:quests/preparedness-tick

execute if score diet quest-status matches 0.. run function generated:quests/diet-tick

execute if score leather quest-status matches 0.. run function generated:quests/leather-tick

execute if score picnic quest-status matches 0.. run function generated:quests/picnic-tick

execute if score lacroix quest-status matches 0.. run function generated:quests/lacroix-tick

execute if score mouse quest-status matches 0.. run function generated:quests/mouse-tick

execute if score sdcard quest-status matches 0.. run function generated:quests/sdcard-tick

execute if score campfire quest-status matches 0.. run function generated:quests/campfire-tick

execute if score grillfish quest-status matches 0.. run function generated:quests/grillfish-tick

execute if score tower quest-status matches 0.. run function generated:quests/tower-tick

execute if score percy quest-status matches 0.. run function generated:quests/percy-tick
