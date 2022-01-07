tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add npc-eavesdropper
execute at @e[tag=npc-epthonbovat, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-epthonbovat, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Epthon Bovat","bold":true},"> ",{"text":"GET OUT!","bold":true}]
execute at @e[tag=npc-epthonbovat, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add epthon-trespasser
execute as @e[tag=npc-epthonbovat, limit=1] at @s run function hitchhike:story/misc/epthon/eject
schedule function generated:npc/epthonbovat/0-end 18t
tag @a remove npc-eavesdropper
