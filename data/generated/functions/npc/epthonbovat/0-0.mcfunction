tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add npc-eavesdropper
execute at @e[tag=npc-epthonbovat, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-epthonbovat, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ethan Bennett","color":"#17130f","bold":true},"> ",{"text":"Hey! I know you're playing that stupid hide and seek thing, but you can't just go around breaking into people's homes!"}]
execute at @e[tag=npc-epthonbovat, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/epthonbovat/0-1 50t
tag @a remove npc-eavesdropper
