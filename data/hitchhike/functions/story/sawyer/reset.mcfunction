scoreboard players set -held story-sawyer 0
scoreboard players set maze-started story-sawyer 0
scoreboard players set maze-stage story-sawyer 0
scoreboard players set visitfriend-start story-sawyer 0
bossbar set maze:boss visible false

# kill minecarts
kill @e[tag=sawyer-holder]

# Reset computer
data modify entity @e[type=glow_item_frame,x=950,y=71,z=0,dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.tag.map set value 347