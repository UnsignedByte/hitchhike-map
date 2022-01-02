tag @a[tag=victim-of-dialogue-by-clothes, limit=1] add npc-eavesdropper
execute at @e[tag=npc-clothes, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-clothes, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jean Skinne","color":"#2387d9","bold":true},"> ",{"text":"Feel free to try on clothes in the changing rooms to your right!"}]
execute at @e[tag=npc-clothes, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/clothes/0-end 108t
tag @a remove npc-eavesdropper
