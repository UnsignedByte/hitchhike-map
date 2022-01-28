tag @a[tag=victim-of-dialogue-by-jebffosse, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jeb Ffosse","color":"#cf1613","bold":true},"> ",{"text":"...Anyways, what was I saying..."}]
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[type=villager,tag=npc-jebffosse, limit=1] 797.50 84 -78.30 -25 0
schedule function generated:npc/jebffosse/0-3 42t
tag @a remove npc-eavesdropper
