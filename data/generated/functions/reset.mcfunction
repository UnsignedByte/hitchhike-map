# Reset schedules
schedule clear scheduled:scheduled/s-20
function scheduled:scheduled/s-20
# Kill all existing NPCs.
kill @e[tag=npc]

# Clear quest book from all players.
clear @a minecraft:written_book{title:"Quest Book"}
scoreboard objectives remove quest-book-upd
scoreboard objectives add quest-book-upd dummy

# Summon the villager for billy.
summon minecraft:villager -3 64 18 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-billy"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE1NWQyMWM3NzNjNzY1MmJlOTg0YmQ3NTNkZDhiM2QyMjVkOWE5NTBkMWQyM2ViZjBmYzVjOWVkYzM4NDBjYiJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:jungle", profession: "minecraft:fletcher", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Billy","color":"#ff00ff","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for sam.
summon minecraft:villager 3 64 18 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-sam"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBiYzk0YTIzOThlOTliNDRkMjUyMDg4Y2EyMzU2M2Y3OTlhZTUzZDdlZWVlOTRmNzFlM2NiODVkMjViOTc4MiJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:swamp", profession: "minecraft:shepherd", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Sam","color":"#ffff00","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for marc.
summon minecraft:villager 0 64 18 {Rotation: [180f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-marc"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmExYjA2Njk3NDIwMmViMGY2ZTM0MmFhYmI3ZTBkNzM0ZGNhMDlhOWY2ZjJiMzhmMjIyNmE3OTEwZmIzNzZlOSJ9fX0" }]}}}}], VillagerData: {type: "minecraft:taiga", profession: "minecraft:mason", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Marc","color":"#00ff00","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for wheatish.
summon minecraft:villager 6 64 18 {Rotation: [180f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-wheatish"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBkNDE1ZDJlYjlkNjhlNTZkYjUwYWZmNDk0YWJkZWRiODViOTExOTE4OWNmMDFkZDRmOTFjNmRhYjJjNmJhIn19fQ==" }]}}}}], VillagerData: {type: "minecraft:desert", profession: "minecraft:none", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Mr. Wheat","color":"#c7a946","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for sean.
summon minecraft:villager 950.5 70 -0.25 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-sean"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWE2MjRmNTk2NmJlZGQ2ZTY3ZjY1NGI1OWU5MjQ5YjJlY2YzMDdkOTAzMzM5YmMxOTk5MjM5NzdmNGM4YyJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:snow", profession: "minecraft:librarian", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Sean","color":"#4fa1a7","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for apple_sale.
summon minecraft:villager 901.5 64 -152.5 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-apple_sale", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Glow Berry (2.00B)","color":"#fad352","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for berry_sale.
summon minecraft:villager 905.5 64 -152.5 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-berry_sale", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Apple (2.00B)","color":"#ff0000","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for melon_sale.
summon minecraft:villager 909.5 64 -152.5 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-melon_sale", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Watermelon (2.00B)","color":"#ff5733","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for cashier.
summon minecraft:villager 891.5 64 -152.5 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-cashier"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Passengers: [{id: area_effect_cloud, CustomName: '{"text":"Henry","color":"#eb7060","bold":true}', CustomNameVisible: 1b, Duration: 2147483647, Tags: ["npc", "aec"]}], Offers: {}}
scoreboard players set @e[tag=npc] dialogue-status 0

scoreboard players reset bread quest-status
scoreboard objectives remove q-0
scoreboard objectives remove s-0-0

scoreboard players reset diet quest-status
scoreboard objectives remove q-1
scoreboard objectives remove s-1-0-0-0
scoreboard objectives remove s-1-0-0-1
scoreboard objectives remove s-1-0-0-2
scoreboard objectives remove s-1-0-1-0
scoreboard objectives remove s-1-0-1-1
scoreboard objectives remove s-1-0-1-2

scoreboard players reset leather quest-status
scoreboard objectives remove q-2
scoreboard objectives remove q-2-0-0
