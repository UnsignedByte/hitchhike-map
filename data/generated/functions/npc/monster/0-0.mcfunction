# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-monster, limit=1] run tellraw @a[distance=..50] ["<",[{"text":"Monster Energy","color":"green","bold":true},{"text":" (5.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-monster, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-monster, limit=1] minecraft:potion{cost: 500, pos: '899.7 63.25 -160.5', display: {Name: '{"text":"Monster Energy","color":"green","bold":true}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"Unsold (5.00B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}], Potion: "minecraft:thick", CustomPotionColor: 846663, sold: 0b} 1
schedule function generated:npc/monster/0-end 12t
