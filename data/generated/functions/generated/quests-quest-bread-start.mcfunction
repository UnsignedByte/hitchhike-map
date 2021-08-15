scoreboard players set bread quest-status 0
scoreboard players set @a quest-book-upd 0
data modify storage generated:quest_book quests append value '{"text":"[","color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":{"text":"Eat 5 pieces of bread."}},"extra":[{"text":"Whole Wheat","italic":true},"(",{"score":{"name":"bread","objective":"quest-status"}},"/5)]"]}'
