tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add npc-eavesdropper
execute at @e[tag=npc-epthonbovat, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[tag=npc-epthonbovat, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Epthon Bovat","bold":true},"> ",{"text":"I already told you this! \"Playing hide and seek\" is NOT an excuse for trespassing."}]
execute at @e[tag=npc-epthonbovat, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/epthonbovat/1-1 50t
tag @a remove npc-eavesdropper
