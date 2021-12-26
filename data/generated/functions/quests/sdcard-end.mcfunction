data modify storage generated:quest_book current[7] set value ''
data modify storage generated:quest_book completed[7] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Decorrupt the SD Card given by Simon. Don\'t know how? Maybe someone familiar with programming would know better..."}},"extra":[{"text":"Decorruption","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set sdcard quest-status -1
execute as @e[tag=npc-simon,limit=1] if score lacroix quest-status matches -1 run scoreboard players set @s dialogue-status 8
execute as @e[tag=npc-simon,limit=1] unless score lacroix quest-status matches -1 run scoreboard players set @s dialogue-status 7
function generated:quests/sdcard-reset
