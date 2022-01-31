tag @a[tag=victim-of-dialogue-by-bosnum, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-bosnum, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-bosnum, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bobby Bert","color":"#dedede","bold":true},"> ",{"text":"Oh, hi. Did I leave the door unlocked?"}]
execute at @e[type=villager,tag=npc-bosnum, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/bosnum/0-1 52t
tag @a remove npc-eavesdropper
