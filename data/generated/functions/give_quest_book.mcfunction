# Clear quest book from all players.
clear @a minecraft:written_book{title:"Quest Book"}
# Give new quest book
execute at @a run summon item ~ ~ ~ {NoGravity:1b,Age:2,PickupDelay:1,Tags:["quest_book_template"],Item:{id:"minecraft:written_book",Count:1b,tag:{title:"Quest Book",author:""}}}
execute as @e[tag=quest_book_template] run data modify entity @s Item set from entity @e[tag=quest_book,limit=1] Item
