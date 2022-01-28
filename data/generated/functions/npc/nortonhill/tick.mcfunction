tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-nortonhill
tag @a[tag=victim-of-dialogue-by-nortonhill, limit=1] remove npc_selector
tag @s add speaking
scoreboard players set dialogue-begun dialogue-status 0
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-nortonhill, tag=!spoken-to, limit=1] if score @s dialogue-status matches 1 run schedule function generated:npc/nortonhill/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-nortonhill, tag=!spoken-to, limit=1] add spoken-to
tag @a[tag=victim-of-dialogue-by-nortonhill, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-nortonhill
execute unless score dialogue-begun dialogue-status matches 1 run tag @s remove speaking
