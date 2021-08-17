# Dialogue line #1-2: speak and make noise.
execute at @e[tag=npc-marc, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Marc","color":"#00ff00","bold":true},"> ",{"text":"I will call the police."}]
execute at @e[tag=npc-marc, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]

schedule function generated:npc/marc-1-end 35t
