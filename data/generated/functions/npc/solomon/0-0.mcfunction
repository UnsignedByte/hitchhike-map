tag @a[tag=victim-of-dialogue-by-solomon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-solomon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-solomon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Solomon Quint","color":"#732424","bold":true},"> ",{"text":"...Hah? Who're you? Why'd Herb let you up in the "},{"text":"middle of the night","italic":true},{"text":"?"}]
execute at @e[tag=npc-solomon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/solomon/0-1 102t
tag @a remove npc-eavesdropper
