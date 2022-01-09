tag @a[tag=victim-of-dialogue-by-fronkobognole, limit=1] add npc-eavesdropper
execute at @e[tag=npc-fronkobognole, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-fronkobognole, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Fronk Obognole","bold":true},"> ",{"text":"Sorry, as you can see I'm a bit of an "},{"text":"avid reader","italic":true},{"text":", an "},{"text":"intellectual","italic":true},{"text":", one might say."}]
execute at @e[tag=npc-fronkobognole, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/fronkobognole/0-2 162t
tag @a remove npc-eavesdropper
