# Kill all existing NPCs.
kill @e[type=minecraft:villager, tag=npc]

# Summon the villager for billy.
summon minecraft:villager -3 150 18 { Silent: 1b, Invulnerable: 1b, CustomNameVisible: 1b, Tags: ["npc", "npc-billy"], CustomName: '{"text":"Billy","color":"#ff00ff","bold":true}', ArmorItems: [{}, {}, {}, { id: "minecraft:player_head", Count: 1b, tag: { SkullOwner: { Id: [I; 0, 0, 0, 0], Properties: { textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE1NWQyMWM3NzNjNzY1MmJlOTg0YmQ3NTNkZDhiM2QyMjVkOWE5NTBkMWQyM2ViZjBmYzVjOWVkYzM4NDBjYiJ9fX0=" }] } } } }], VillagerData: { type: "minecraft:jungle", profession: "minecraft:fletcher", level: 99 }, Offers: {} }

# Summon the villager for sam.
summon minecraft:villager 3 150 18 { Silent: 1b, Invulnerable: 1b, CustomNameVisible: 1b, Tags: ["npc", "npc-sam"], CustomName: '{"text":"Sam","color":"#ffff00","bold":true}', ArmorItems: [{}, {}, {}, { id: "minecraft:player_head", Count: 1b, tag: { SkullOwner: { Id: [I; 0, 0, 0, 0], Properties: { textures: [{ Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBiYzk0YTIzOThlOTliNDRkMjUyMDg4Y2EyMzU2M2Y3OTlhZTUzZDdlZWVlOTRmNzFlM2NiODVkMjViOTc4MiJ9fX0=" }] } } } }], VillagerData: { type: "minecraft:swamp", profession: "minecraft:shepherd", level: 99 }, Offers: {} }
