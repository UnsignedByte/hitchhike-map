# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Get off my property! I'll call the police on you, I WILL."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] 100
scoreboard players set -held story-simon 0
kill @e[tag=simon-holder]
tp @e[tag=npc-simon, limit=1] 912.00 64 194.50 180 0
schedule function generated:npc/simon/0-3 105t
