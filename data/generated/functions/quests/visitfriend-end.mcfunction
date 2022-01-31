data modify storage generated:quest_book current[2] set value ''
data modify storage generated:quest_book completed[2] set value '{"text":"","color":"gray","bold":false,"underlined":false,"strikethrough":true,"hoverEvent":{"action":"show_text","contents":{"text":"Unlawfully break and enter into your friend\'s house."}},"extra":[{"text":"Visit Chris","italic":true}," (100%)"]}'
scoreboard players set @a quest-book-upd -1
scoreboard players set visitfriend quest-status -1
function generated:quests/visitfriend-reset
