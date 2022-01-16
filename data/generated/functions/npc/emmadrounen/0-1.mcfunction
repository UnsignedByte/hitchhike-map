tag @a[tag=victim-of-dialogue-by-emmadrounen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-emmadrounen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-emmadrounen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Emma Drounen","color":"#0d559e","bold":true},"> ",{"text":"You keep splashing -blblb- and you'll expose -blb- hiding spot!"}]
execute at @e[tag=npc-emmadrounen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/emmadrounen/0-2 90t
tag @a remove npc-eavesdropper
