tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-8: speak and make noise.
execute at @e[tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Hurm Etkcraub","color":"#183aab","bold":true},"> ",{"text":"Here, these compasses will point you towards the mountaintop. Good luck with that hike, I've heard its difficult."}]
execute at @e[tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set hurm-done vars 1
execute as @a run function generated:story/parkour/respawn
team modify player collisionRule pushOtherTeams
team modify player friendlyFire false
schedule function generated:npc/hurm/2-end 210t
tag @a remove npc-eavesdropper
