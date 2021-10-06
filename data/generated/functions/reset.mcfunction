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
summon minecraft:villager -3.00 64 18.00 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-billy"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE1NWQyMWM3NzNjNzY1MmJlOTg0YmQ3NTNkZDhiM2QyMjVkOWE5NTBkMWQyM2ViZjBmYzVjOWVkYzM4NDBjYiJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:jungle", profession: "minecraft:fletcher", level: 99}, Offers: {}, CustomName: '{"text":"Billy","color":"#ff00ff","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for sam.
summon minecraft:villager 3.00 64 18.00 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-sam"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBiYzk0YTIzOThlOTliNDRkMjUyMDg4Y2EyMzU2M2Y3OTlhZTUzZDdlZWVlOTRmNzFlM2NiODVkMjViOTc4MiJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:swamp", profession: "minecraft:shepherd", level: 99}, Offers: {}, CustomName: '{"text":"Sam","color":"#ffff00","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for marc.
summon minecraft:villager 0.00 64 18.00 {Rotation: [180f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-marc"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmExYjA2Njk3NDIwMmViMGY2ZTM0MmFhYmI3ZTBkNzM0ZGNhMDlhOWY2ZjJiMzhmMjIyNmE3OTEwZmIzNzZlOSJ9fX0" }]}}}}], VillagerData: {type: "minecraft:taiga", profession: "minecraft:mason", level: 99}, Offers: {}, CustomName: '{"text":"Marc","color":"#00ff00","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for wheatish.
summon minecraft:villager 6.00 64 18.00 {Rotation: [180f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-wheatish"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBkNDE1ZDJlYjlkNjhlNTZkYjUwYWZmNDk0YWJkZWRiODViOTExOTE4OWNmMDFkZDRmOTFjNmRhYjJjNmJhIn19fQ==" }]}}}}], VillagerData: {type: "minecraft:desert", profession: "minecraft:none", level: 99}, Offers: {}, CustomName: '{"text":"Mr. Wheat","color":"#c7a946","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for sawyer.
summon minecraft:villager 950.50 70 -0.25 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-sawyer"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFkMTNmN2Q4ZTVhMTBmNGZiYThiODk3NTVlZGVkNzBmYzk2MTE5YTRlOThkZjc3M2M4NmQzMmNmN2E3ZjNlZiJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:savanna", profession: "minecraft:cleric", level: 99}, Offers: {}, CustomName: '{"text":"Chris Sawyer","color":"#4fa1a7","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for simon.
summon minecraft:villager 939.25 68 195.00 {Rotation: [90f, 15f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-simon"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Q0ZjNhMDk3YjgyZGVjODBhMzZkYzRhODkxNmI4MWVmZWZhZGFlM2ExNDU1NTMxODI5NjliNDA5OTYwMGIxZSJ9fX0=" }]}}}}], VillagerData: {type: "minecraft:snow", profession: "minecraft:librarian", level: 99}, Offers: {}, CustomName: '{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for cashier.
summon minecraft:villager 891.50 64 -152.50 {Rotation: [180f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-cashier"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Offers: {}, CustomName: '{"text":"Henry","color":"#eb7060","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for cameron.
summon minecraft:villager 944.30 96.8 17.30 {Rotation: [140f, 35f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-cameron"], ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 0, 0, 0, 0], Properties: {textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWI4NDE4YzQ2MWY2M2Q2YWFkMzkzMmE2MzlmY2UzZmVjMjI3YTM3NzRhNTliODUxZmZiZTY1NTg3NGViNzkxIn19fQ==" }]}}}}], VillagerData: {type: "minecraft:swamp", profession: "minecraft:nitwit", level: 99}, Offers: {}, CustomName: '{"text":"Cameron \\"Cam\\" Au-Flauge","color":"#197037","bold":true}'}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for apple.
summon minecraft:villager 905.50 64 -152.50 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-apple", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Offers: {}, Passengers: [{id: area_effect_cloud, CustomName: '["apple",{"text":"(2.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}]', Duration: 2147483647, Tags: ["npc", "aec"]}]}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for melon_slice.
summon minecraft:villager 909.50 64 -152.50 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-melon_slice", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Offers: {}, Passengers: [{id: area_effect_cloud, CustomName: '["melon_slice",{"text":"(2.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}]', Duration: 2147483647, Tags: ["npc", "aec"]}]}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for glow_berries.
summon minecraft:villager 901.50 64 -152.50 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-glow_berries", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Offers: {}, Passengers: [{id: area_effect_cloud, CustomName: '["glow_berries",{"text":"(2.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}]', Duration: 2147483647, Tags: ["npc", "aec"]}]}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for monster.
summon minecraft:villager 899.70 63.75 -160.50 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-monster", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Offers: {}, Passengers: [{id: area_effect_cloud, CustomName: '[{"text":"Monster Energy","color":"green","bold":true},{"text":"(5.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}]', Duration: 2147483647, Tags: ["npc", "aec"]}]}
scoreboard players set @e[tag=npc] dialogue-status 0

# Summon the villager for lacroix.
summon minecraft:villager 899.71 65.25 -160.50 {Rotation: [0f, 0f], Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Tags: ["npc", "npc-lacroix", "invisible"], VillagerData: {type: "minecraft:plains", profession: "minecraft:none", level: 99}, Offers: {}, Passengers: [{id: area_effect_cloud, CustomName: '[{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true},{"text":"(10.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}]', Duration: 2147483647, Tags: ["npc", "aec"]}]}
scoreboard players set @e[tag=npc] dialogue-status 0

scoreboard players reset visitfriend quest-status
function generated:quests/visitfriend-reset

scoreboard players reset bread quest-status
function generated:quests/bread-reset

scoreboard players reset preparedness quest-status
function generated:quests/preparedness-reset

scoreboard players reset diet quest-status
function generated:quests/diet-reset

scoreboard players reset leather quest-status
function generated:quests/leather-reset

scoreboard players reset picnic quest-status
function generated:quests/picnic-reset
