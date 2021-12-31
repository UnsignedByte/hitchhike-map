tag @a[tag=victim-of-dialogue-by-lucky, limit=1] add npc-eavesdropper
execute at @e[tag=npc-lucky, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-lucky, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Lucky Goldstar","color":"#3db330","bold":true},"> ",{"text":"I am sure to win, so please dont let Sam know..."}]
execute at @e[tag=npc-lucky, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/lucky/0-end 84t
tag @a remove npc-eavesdropper
