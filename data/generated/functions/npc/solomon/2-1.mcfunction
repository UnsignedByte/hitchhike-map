tag @a[tag=victim-of-dialogue-by-solomon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-solomon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-2: speak and make noise.
execute at @e[type=villager,tag=npc-solomon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Solomon Quint","color":"#732424","bold":true},"> ",{"text":"Feel free to hang around here; it's the least I could do considering your presence miraculously fixed the internet for me."}]
execute at @e[type=villager,tag=npc-solomon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/solomon/2-2 246t
tag @a remove npc-eavesdropper
