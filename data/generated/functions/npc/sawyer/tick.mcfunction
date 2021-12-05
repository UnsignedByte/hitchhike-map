tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-sawyer
tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] remove npc_selector
tag @s add speaking
scoreboard players set dialogue-begun dialogue-status 0
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 3 run schedule function generated:npc/sawyer/0-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/sawyer/1-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 2 run schedule function generated:npc/sawyer/2-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 4 run schedule function generated:npc/sawyer/3-00 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 5 run schedule function generated:npc/sawyer/4-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 6 run schedule function generated:npc/sawyer/5-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 7 run schedule function generated:npc/sawyer/6-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] if score @s dialogue-status matches 8 run schedule function generated:npc/sawyer/7-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] add spoken-to
tag @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-sawyer
execute if score dialogue-begun dialogue-status matches 0 if entity @a[tag=victim-of-dialogue-by-sawyer, tag=!spoken-to, limit=1] run tag @s remove speaking
