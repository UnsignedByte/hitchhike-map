data modify storage generated:quest_book current[10] set value ''
data modify storage generated:quest_book completed[10] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Grill some fish for Hurm\'s late-night snack!"}},"extra":[{"text":"Fish-n-chips","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set grillfish quest-status -1
execute if score -caught hurm-fish-caught matches 4.. run data modify storage hitchhike:story/hurm fish_message set value "Nice job on the fish, though. Maybe a little charred but otherwise quite well done."
execute unless score -caught hurm-fish-caught matches 4.. run data modify storage hitchhike:story/hurm fish_message set value "What an amazingly cooked fish though; if I didn't know better I would think you got it straight from a restaurant. It's amazing what you managed to make with no spices or anything."
scoreboard players set @e[tag=npc-hurm] dialogue-status 3
function generated:quests/grillfish-reset
