tag @a[tag=victim-of-dialogue-by-duanerocque, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-duanerocque, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-duanerocque, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Dwight Rocque","color":"#e6e6e6","bold":true},"> ",{"text":"If you're so bored why don't you go back to playing... Sorry, "},{"text":"hanging out","italic":true},{"text":" with Jasmine instead?"}]
execute at @e[type=villager,tag=npc-duanerocque, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/duanerocque/0-end 108t
tag @a remove npc-eavesdropper
