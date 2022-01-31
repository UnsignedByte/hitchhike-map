tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-12: speak and make noise.
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"I'll try to work on it in the meantime. Maybe if you come back early we could talk some more."}]
execute at @e[type=villager,tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
data modify entity @e[type=glow_item_frame,x=950,y=71,z=0,dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.tag.map set value 347
data modify entity @e[type=villager,tag=npc-sawyer, limit=1] HandItems[0] set value {}
schedule function generated:npc/sawyer/3-12 116t
tag @a remove npc-eavesdropper
