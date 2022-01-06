tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"There is no way "},{"text":"you people","italic":true},{"text":" are welcome up here. This is private property, and trespassing is "},{"text":"ILLEGAL","bold":true},{"text":"."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tag @e[tag=npc-simon, limit=1] remove npc-unface
schedule function generated:npc/simon/0-2 198t
tag @a remove npc-eavesdropper
