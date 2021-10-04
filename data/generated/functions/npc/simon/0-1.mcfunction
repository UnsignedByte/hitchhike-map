# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Get off my property! I'll call the police on you, I WILL."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
summon minecart 939.5 39 195.5 {Silent:1,Tags:["simon-holder"]}
scoreboard players set -held story-simon 1
schedule function generated:npc/simon/0-2 105t
