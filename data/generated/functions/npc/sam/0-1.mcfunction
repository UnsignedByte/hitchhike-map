# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-sam, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Sam","color":"#ffff00","bold":true},"> ",{"text":"Please leave."}]
execute at @e[tag=npc-sam, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sam/0-end 42t
