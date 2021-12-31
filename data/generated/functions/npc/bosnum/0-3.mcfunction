tag @a[tag=victim-of-dialogue-by-bosnum, limit=1] add npc-eavesdropper
execute at @e[tag=npc-bosnum, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-bosnum, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bosnum Bert","bold":true},"> ",{"text":"Feel free to take a look around."}]
execute at @e[tag=npc-bosnum, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/bosnum/0-end 78t
tag @a remove npc-eavesdropper