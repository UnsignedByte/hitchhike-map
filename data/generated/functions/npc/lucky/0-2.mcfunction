tag @a[tag=victim-of-dialogue-by-lucky, limit=1] add npc-eavesdropper
execute at @e[tag=npc-lucky, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-lucky, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Lucky Goldstar","color":"#3db330","bold":true},"> ",{"text":"Nobody will dare to look into someone else's house, especially Sam's- I'm genius!"}]
execute at @e[tag=npc-lucky, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/lucky/0-3 168t
tag @a remove npc-eavesdropper
