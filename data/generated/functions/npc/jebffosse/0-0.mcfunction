tag @a[tag=victim-of-dialogue-by-jebffosse, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jeb Ffosse","color":"#cf1613","bold":true},"> ",{"text":"What are you doing in my office? Get out!"}]
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/jebffosse/0-1 84t
tag @a remove npc-eavesdropper
