tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #3-6: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Let me boot up my computer and I'll see what I can do."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[tag=npc-sawyer, limit=1] 950.50 70 -0.25 0 0
data modify entity @e[type=glow_item_frame,x=950,y=71,z=0,dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.tag.map set value 298
scoreboard players set -held story-sawyer 0
schedule function generated:npc/sawyer/3-6 96t
tag @a remove npc-eavesdropper
