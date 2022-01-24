tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-10: speak and make noise.
execute at @e[type=villager,tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Herb Schmitt","color":"#183aab","bold":true},"> ",{"text":"Here, these compasses will point you towards the mountaintop. Good luck with that hike, sport, I've heard it's difficult."}]
execute at @e[type=villager,tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set #hurm-done vars 1
execute as @a run function generated:story/parkour/respawn
team modify player collisionRule pushOtherTeams
team modify player friendlyFire false
function hitchhike:story/parkour/await_start
spawnpoint @a 1077 125 353
function generated:story/hurm/nighttime_seq
schedule function generated:npc/hurm/2-end 216t
tag @a remove npc-eavesdropper
