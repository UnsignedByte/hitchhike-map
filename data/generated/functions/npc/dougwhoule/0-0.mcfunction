tag @a[tag=victim-of-dialogue-by-dougwhoule, limit=1] add npc-eavesdropper
execute at @e[tag=npc-dougwhoule, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-dougwhoule, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Doug Whoule","color":"#ebe34b","bold":true},"> ",{"text":"Nice hiding spot, isn't it?"}]
execute at @e[tag=npc-dougwhoule, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/dougwhoule/0-1 42t
tag @a remove npc-eavesdropper
