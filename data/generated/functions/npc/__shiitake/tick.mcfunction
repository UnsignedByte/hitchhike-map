tag @a[tag=npc_selector,sort=nearest,limit=1] add victim-of-dialogue-by-__shiitake
tag @a[tag=victim-of-dialogue-by-__shiitake, limit=1] remove npc_selector
tag @s add speaking
scoreboard players set dialogue-begun dialogue-status 0
execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity @a[tag=victim-of-dialogue-by-__shiitake, tag=!spoken-to, limit=1] if score @s dialogue-status matches 0 run schedule function generated:npc/__shiitake/0-0 1t
execute if score dialogue-begun dialogue-status matches 1 run tag @a[tag=victim-of-dialogue-by-__shiitake, tag=!spoken-to, limit=1] add spoken-to
tag @a[tag=victim-of-dialogue-by-__shiitake, tag=!spoken-to, limit=1] remove victim-of-dialogue-by-__shiitake
execute if score dialogue-begun dialogue-status matches 0 if entity @a[tag=victim-of-dialogue-by-__shiitake, tag=!spoken-to, limit=1] run tag @s remove speaking