tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-muller
tag @a[tag=victim-of-dialogue-by-muller, limit=1] remove npc_selector
tag @s add speaking
scoreboard players set dialogue-begun dialogue-status 0
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-muller, tag=!spoken-to, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/muller/0-0 1t
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-muller, tag=!spoken-to, limit=1] if score @s dialogue-status matches 2 run schedule function generated:npc/muller/1-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-muller, tag=!spoken-to, limit=1] add spoken-to
tag @a[tag=victim-of-dialogue-by-muller, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-muller
execute unless score dialogue-begun dialogue-status matches 1 run tag @s remove speaking
