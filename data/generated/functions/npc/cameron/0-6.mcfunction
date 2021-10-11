tag @a[tag=victim-of-dialogue-by-cameron, limit=1] add npc-eavesdropper
execute at @e[tag=npc-cameron, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-7: speak and make noise.
execute at @e[tag=npc-cameron, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cameron \"Cam\" Au-Flauge","color":"#197037","bold":true},"> ",{"text":"Here, take my spyglass."}]
execute at @e[tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-cameron, limit=1] minecraft:spyglass{display: {Name: '{"text":"Cam\'s Spyglass","color":"gold","bold":true}', Lore: ['{"text":"Cameron\'s Spyglass","color":"blue"}', '{"text":"Helps you spot","color":"gray"}', '{"text":"faraway things.","color":"gray"}']}, Enchantments: [{}]} 1
schedule function generated:npc/cameron/0-7 30t
tag @a remove npc-eavesdropper
