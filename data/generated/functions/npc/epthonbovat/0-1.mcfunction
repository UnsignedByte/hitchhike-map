tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add npc-eavesdropper
execute at @e[tag=npc-epthonbovat, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-epthonbovat, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ethan Bennett","color":"#17130f","bold":true},"> ",{"text":"Breaking and entering is a crime, I hope you realize!"}]
execute at @e[tag=npc-epthonbovat, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/epthonbovat/0-2 50t
tag @a remove npc-eavesdropper
