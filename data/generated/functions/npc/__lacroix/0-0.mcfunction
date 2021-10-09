# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-__lacroix, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true},{"text":" (9.99B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-__lacroix, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-__lacroix, limit=1] minecraft:paper{cost: 999, pos: '899.7 64.75 -160.75', display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 0b} 1
schedule function generated:npc/__lacroix/0-end 12t