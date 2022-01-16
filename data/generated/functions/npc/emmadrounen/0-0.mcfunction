tag @a[tag=victim-of-dialogue-by-emmadrounen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-emmadrounen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-emmadrounen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Emma Drounen","color":"#0d559e","bold":true},"> ",{"text":"Hey! BLBLB- Get -blb- of the water!"}]
execute at @e[tag=npc-emmadrounen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/emmadrounen/0-1 36t
tag @a remove npc-eavesdropper
