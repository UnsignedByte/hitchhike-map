tag @a[tag=victim-of-dialogue-by-safeway, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-safeway, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[type=villager,tag=npc-safeway, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Harold Pell","color":"#ed81b8","bold":true},"> ",{"text":"Have a great day!"}]
execute at @e[type=villager,tag=npc-safeway, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/safeway/0-end 24t
tag @a remove npc-eavesdropper
