tag @a[tag=victim-of-dialogue-by-jebffosse, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jedd Fosse","color":"#cf1613","bold":true},"> ",{"text":"Oh yeah, I remember now, we were discussing responses to the "},{"text":"demands","italic":true},{"text":" the \"Union\" had."}]
execute at @e[type=villager,tag=npc-jebffosse, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/jebffosse/0-4 104t
tag @a remove npc-eavesdropper
