tag @a[tag=victim-of-dialogue-by-safeway, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-safeway, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-safeway, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Harold Pell","color":"#ed81b8","bold":true},"> ",{"text":"Then you can pay by dropping some money on the brown square to your left."}]
execute at @e[type=villager,tag=npc-safeway, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/safeway/0-3 84t
tag @a remove npc-eavesdropper
