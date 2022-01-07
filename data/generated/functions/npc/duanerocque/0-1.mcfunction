tag @a[tag=victim-of-dialogue-by-duanerocque, limit=1] add npc-eavesdropper
execute at @e[tag=npc-duanerocque, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-duanerocque, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Duane Rocque","bold":true},"> ",{"text":"If you're so bored why don't you go find Jasmine instead? I've been calling for him to get down here all day and he's nowhere to be seen."}]
execute at @e[tag=npc-duanerocque, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/duanerocque/0-end 252t
tag @a remove npc-eavesdropper
