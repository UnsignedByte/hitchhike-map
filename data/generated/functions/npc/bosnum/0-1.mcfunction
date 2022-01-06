tag @a[tag=victim-of-dialogue-by-bosnum, limit=1] add npc-eavesdropper
execute at @e[tag=npc-bosnum, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-bosnum, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bosnum Bert","bold":true},"> ",{"text":"You don't live next door..."}]
execute at @e[tag=npc-bosnum, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/bosnum/0-2 48t
tag @a remove npc-eavesdropper
