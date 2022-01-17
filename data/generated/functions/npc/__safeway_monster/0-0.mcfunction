tag @a[tag=victim-of-dialogue-by-__safeway_monster, limit=1] add npc-eavesdropper
execute at @e[tag=npc-__safeway_monster, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.

# silent // execute at @e[tag=npc-__safeway_monster, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-__safeway_monster, limit=1] minecraft:paper{cost: 799, display: {Name: '{"text":"Monster Energy","color":"green"}', Lore: ["{\"text\":\"The energy drink for\",\"color\":\"dark_green\",\"bold\":false}","{\"text\":\"the perfect League\",\"color\":\"dark_green\"}","{\"text\":\"of Legends player.\",\"color\":\"dark_green\"}","{\"text\":\"\"}","{\"text\":\"Unsold (7.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 3b, Amplifier: 1b, Duration: 600}, {Id: 9b, Amplifier: 0b, Duration: 200}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 16b, Amplifier: 0b, Duration: 400}, {Id: 17b, Amplifier: 100b, Duration: 80}], Potion: "minecraft:thick", CustomPotionColor: 846663, store: "safeway", item: "monster", sold: 0b} 1
schedule function generated:npc/__safeway_monster/0-end 12t
tag @a remove npc-eavesdropper
