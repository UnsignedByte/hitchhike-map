tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-epthonbovat, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-2: speak and make noise.
execute at @e[type=villager,tag=npc-epthonbovat, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ethan Bennett","color":"#17130f","bold":true},"> ",{"text":"Get OUT!","bold":true}]
execute at @e[type=villager,tag=npc-epthonbovat, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tag @a[tag=victim-of-dialogue-by-epthonbovat, limit=1] add epthon-trespasser
execute as @e[type=villager,tag=npc-epthonbovat, limit=1] at @s run function hitchhike:story/misc/epthon/eject
schedule function generated:npc/epthonbovat/1-end 12t
tag @a remove npc-eavesdropper
