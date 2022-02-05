tag @a[tag=victim-of-dialogue-by-clothes, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-clothes, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-clothes, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jean Slimm","color":"#2387d9","bold":true},"> ",{"text":"Once you're ready, put your selection on the counter and your money on the brown square on the right."}]
execute at @e[type=villager,tag=npc-clothes, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/clothes/0-end 132t
tag @a remove npc-eavesdropper
