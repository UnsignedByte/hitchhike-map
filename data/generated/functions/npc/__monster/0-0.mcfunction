tag @a[tag=victim-of-dialogue-by-__monster, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__monster, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__monster, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",[{"text":"Monster Energy","color":"green","bold":true},{"text":" (7.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__monster, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__monster, limit=1] minecraft:paper{cost: 799, pos: '899.7 63.25 -160.75', display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 0b} 1
schedule function generated:npc/__monster/0-end 12t
tag @a remove npc-eavesdropper
