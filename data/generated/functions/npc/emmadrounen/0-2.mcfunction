tag @a[tag=victim-of-dialogue-by-emmadrounen, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-emmadrounen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-emmadrounen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Emma Drounen","color":"#0d559e","bold":true},"> ",{"text":"-Blb- quiet, will you!"}]
execute at @e[type=villager,tag=npc-emmadrounen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/emmadrounen/0-end 36t
tag @a remove npc-eavesdropper
