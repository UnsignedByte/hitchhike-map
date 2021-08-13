# Kill all existing NPCs.
kill @e[type=minecraft:villager, tag=npc]

# Summon the villager for billy.
summon minecraft:villager -3 64 18 0 0 { Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, CustomNameVisible: 1b, Tags: ["npc", "npc-billy"], CustomName: '{"text":"Billy","color":"#ff00ff","bold":true}', ArmorItems: [{}, {}, {}, { id: "minecraft:player_head", Count: 1b, tag: { SkullOwner: { Id: [I; 0, 0, 0, 0], Properties: { textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE1NWQyMWM3NzNjNzY1MmJlOTg0YmQ3NTNkZDhiM2QyMjVkOWE5NTBkMWQyM2ViZjBmYzVjOWVkYzM4NDBjYiJ9fX0=" }] } } } }], VillagerData: { type: "minecraft:jungle", profession: "minecraft:fletcher", level: 99 }, Offers: {} }

# Summon the villager for sam.
summon minecraft:villager 3 64 18 0 0 { Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, CustomNameVisible: 1b, Tags: ["npc", "npc-sam"], CustomName: '{"text":"Sam","color":"#ffff00","bold":true}', ArmorItems: [{}, {}, {}, { id: "minecraft:player_head", Count: 1b, tag: { SkullOwner: { Id: [I; 0, 0, 0, 0], Properties: { textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBiYzk0YTIzOThlOTliNDRkMjUyMDg4Y2EyMzU2M2Y3OTlhZTUzZDdlZWVlOTRmNzFlM2NiODVkMjViOTc4MiJ9fX0=" }] } } } }], VillagerData: { type: "minecraft:swamp", profession: "minecraft:shepherd", level: 99 }, Offers: {} }

# Summon the villager for marc.
summon minecraft:villager 0 64 18 180 0 { Silent: 1b, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, CustomNameVisible: 1b, Tags: ["npc", "npc-marc"], CustomName: '{"text":"Marc","color":"#00ff00","bold":true}', ArmorItems: [{}, {}, {}, { id: "minecraft:player_head", Count: 1b, tag: { SkullOwner: { Id: [I; 0, 0, 0, 0], Properties: { textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmExYjA2Njk3NDIwMmViMGY2ZTM0MmFhYmI3ZTBkNzM0ZGNhMDlhOWY2ZjJiMzhmMjIyNmE3OTEwZmIzNzZlOSJ9fX0" }] } } } }], VillagerData: { type: "minecraft:taiga", profession: "minecraft:mason", level: 99 }, Offers: {} }
