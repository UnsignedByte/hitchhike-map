tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #7-5: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Hmm..."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set -held story-simon 0
kill @e[tag=simon-holder]
tp @e[tag=npc-simon, limit=1] 963.50 74 201.50 270 60
playsound minecraft:entity.item_frame.remove_item neutral @a ~ ~ ~ 1
summon glow_item_frame 963 74 201 {Silent:1b,Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["inserted_sdcard"],Item:{id:"minecraft:daylight_detector",Count:1b,tag:{Enchantments:[{}]}}}
data modify entity @e[tag=npc-simon, limit=1] HandItems[0] set value {}
schedule function generated:npc/simon/7-05 40t
tag @a remove npc-eavesdropper
