scoreboard players operation 4_b stores = count change
data modify storage hitchhike:stores success.ramen set value '[{"score":{"name":"4_B","objective":"stores"}},".",{"score":{"name":"4_b","objective":"stores"}}," Bov is your change. ありがとございました！"]'
# sell items.
function generated:story/stores/ramen/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.ramen set value '["Welcome! We have ",{"text":"[Tonkotsu]","color":"#bfa569","italic":true,"clickEvent":{"action":"run_command","value":"trigger storetrigger set -1012325249"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:mushroom_soup","tag":"{cost: 1499, display: {Name: \'{\\"text\\":\\"Tonkotsu Ramen\\",\\"color\\":\\"#bfa569\\"}\', Lore: [\\"{\\\\\\"text\\\\\\":\\\\\\"Using Rich Pork Broth.\\\\\\",\\\\\\"italic\\\\\\":true,\\\\\\"color\\\\\\":\\\\\\"dark_gray\\\\\\"}\\",\\"{\\\\\\"text\\\\\\":\\\\\\"\\\\\\"}\\",\\"{\\\\\\"text\\\\\\":\\\\\\"Sold (14.99B)\\\\\\",\\\\\\"italic\\\\\\":true,\\\\\\"color\\\\\\":\\\\\\"dark_purple\\\\\\"}\\"]}, Unbreakable: 1b, HideFlags: 127, store: \\"ramen\\", item: \\"tonkotsu\\", sold: 1b}"}}},", ",{"text":"[Shoyu]","color":"#bd7d5c","italic":true,"clickEvent":{"action":"run_command","value":"trigger storetrigger set 109413718"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:beetroot_soup","tag":"{cost: 1299, display: {Name: \'{\\"text\\":\\"Shoyu Ramen\\",\\"color\\":\\"#bd7d5c\\"}\', Lore: [\\"{\\\\\\"text\\\\\\":\\\\\\"Clear broth with soy sauce.\\\\\\",\\\\\\"italic\\\\\\":true,\\\\\\"color\\\\\\":\\\\\\"dark_gray\\\\\\"}\\",\\"{\\\\\\"text\\\\\\":\\\\\\"\\\\\\"}\\",\\"{\\\\\\"text\\\\\\":\\\\\\"Sold (12.99B)\\\\\\",\\\\\\"italic\\\\\\":true,\\\\\\"color\\\\\\":\\\\\\"dark_purple\\\\\\"}\\"]}, Unbreakable: 1b, HideFlags: 127, store: \\"ramen\\", item: \\"shoyu\\", sold: 1b}"}}},", and ",{"text":"[Miso]","color":"#b87f39","italic":true,"clickEvent":{"action":"run_command","value":"trigger storetrigger set 3351800"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:rabbit_stew","tag":"{cost: 1399, display: {Name: \'{\\"text\\":\\"Miso Ramen\\",\\"color\\":\\"#b87f39\\"}\', Lore: [\\"{\\\\\\"text\\\\\\":\\\\\\"Sweet, Tangy Miso paste.\\\\\\",\\\\\\"italic\\\\\\":true,\\\\\\"color\\\\\\":\\\\\\"dark_gray\\\\\\"}\\",\\"{\\\\\\"text\\\\\\":\\\\\\"\\\\\\"}\\",\\"{\\\\\\"text\\\\\\":\\\\\\"Sold (13.99B)\\\\\\",\\\\\\"italic\\\\\\":true,\\\\\\"color\\\\\\":\\\\\\"dark_purple\\\\\\"}\\"]}, Unbreakable: 1b, HideFlags: 127, store: \\"ramen\\", item: \\"miso\\", sold: 1b}"}}}," ramen."]'
