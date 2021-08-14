# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"I have nothing to say to you."}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:npc/npc-dialogue-marc-0-1 50t
