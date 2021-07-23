// const blocks = await fetch("https://raw.githubusercontent.com/PrismarineJS/minecraft-data/master/data/pc/1.16.1/blocks.json").then(x=>x.json()).then(x=>x.map(v=>v.name));
const blocks = [
    "air",
    "stone",
    "granite",
    "polished_granite",
    "diorite",
    "polished_diorite",
    "andesite",
    "polished_andesite",
    "grass_block",
    "dirt",
    "coarse_dirt",
    "podzol",
    "cobblestone",
    "oak_planks",
    "spruce_planks",
    "birch_planks",
    "jungle_planks",
    "acacia_planks",
    "dark_oak_planks",
    "oak_sapling",
    "spruce_sapling",
    "birch_sapling",
    "jungle_sapling",
    "acacia_sapling",
    "dark_oak_sapling",
    "bedrock",
    "water",
    "lava",
    "sand",
    "red_sand",
    "gravel",
    "gold_ore",
    "iron_ore",
    "coal_ore",
    "nether_gold_ore",
    "oak_log",
    "spruce_log",
    "birch_log",
    "jungle_log",
    "acacia_log",
    "dark_oak_log",
    "stripped_spruce_log",
    "stripped_birch_log",
    "stripped_jungle_log",
    "stripped_acacia_log",
    "stripped_dark_oak_log",
    "stripped_oak_log",
    "oak_wood",
    "spruce_wood",
    "birch_wood",
    "jungle_wood",
    "acacia_wood",
    "dark_oak_wood",
    "stripped_oak_wood",
    "stripped_spruce_wood",
    "stripped_birch_wood",
    "stripped_jungle_wood",
    "stripped_acacia_wood",
    "stripped_dark_oak_wood",
    "oak_leaves",
    "spruce_leaves",
    "birch_leaves",
    "jungle_leaves",
    "acacia_leaves",
    "dark_oak_leaves",
    "sponge",
    "wet_sponge",
    "glass",
    "lapis_ore",
    "lapis_block",
    "dispenser",
    "sandstone",
    "chiseled_sandstone",
    "cut_sandstone",
    "note_block",
    "white_bed",
    "orange_bed",
    "magenta_bed",
    "light_blue_bed",
    "yellow_bed",
    "lime_bed",
    "pink_bed",
    "gray_bed",
    "light_gray_bed",
    "cyan_bed",
    "purple_bed",
    "blue_bed",
    "brown_bed",
    "green_bed",
    "red_bed",
    "black_bed",
    "powered_rail",
    "detector_rail",
    "sticky_piston",
    "cobweb",
    "grass",
    "fern",
    "dead_bush",
    "seagrass",
    "tall_seagrass",
    "piston",
    "piston_head",
    "white_wool",
    "orange_wool",
    "magenta_wool",
    "light_blue_wool",
    "yellow_wool",
    "lime_wool",
    "pink_wool",
    "gray_wool",
    "light_gray_wool",
    "cyan_wool",
    "purple_wool",
    "blue_wool",
    "brown_wool",
    "green_wool",
    "red_wool",
    "black_wool",
    "moving_piston",
    "dandelion",
    "poppy",
    "blue_orchid",
    "allium",
    "azure_bluet",
    "red_tulip",
    "orange_tulip",
    "white_tulip",
    "pink_tulip",
    "oxeye_daisy",
    "cornflower",
    "wither_rose",
    "lily_of_the_valley",
    "brown_mushroom",
    "red_mushroom",
    "gold_block",
    "iron_block",
    "bricks",
    "tnt",
    "bookshelf",
    "mossy_cobblestone",
    "obsidian",
    "torch",
    "wall_torch",
    "fire",
    "soul_fire",
    "spawner",
    "oak_stairs",
    "chest",
    "redstone_wire",
    "diamond_ore",
    "diamond_block",
    "crafting_table",
    "wheat",
    "farmland",
    "furnace",
    "oak_sign",
    "spruce_sign",
    "birch_sign",
    "acacia_sign",
    "jungle_sign",
    "dark_oak_sign",
    "oak_door",
    "ladder",
    "rail",
    "cobblestone_stairs",
    "oak_wall_sign",
    "spruce_wall_sign",
    "birch_wall_sign",
    "acacia_wall_sign",
    "jungle_wall_sign",
    "dark_oak_wall_sign",
    "lever",
    "stone_pressure_plate",
    "iron_door",
    "oak_pressure_plate",
    "spruce_pressure_plate",
    "birch_pressure_plate",
    "jungle_pressure_plate",
    "acacia_pressure_plate",
    "dark_oak_pressure_plate",
    "redstone_ore",
    "redstone_torch",
    "redstone_wall_torch",
    "stone_button",
    "snow",
    "ice",
    "snow_block",
    "cactus",
    "clay",
    "sugar_cane",
    "jukebox",
    "oak_fence",
    "pumpkin",
    "netherrack",
    "soul_sand",
    "soul_soil",
    "basalt",
    "polished_basalt",
    "soul_torch",
    "soul_wall_torch",
    "glowstone",
    "nether_portal",
    "carved_pumpkin",
    "jack_o_lantern",
    "cake",
    "repeater",
    "white_stained_glass",
    "orange_stained_glass",
    "magenta_stained_glass",
    "light_blue_stained_glass",
    "yellow_stained_glass",
    "lime_stained_glass",
    "pink_stained_glass",
    "gray_stained_glass",
    "light_gray_stained_glass",
    "cyan_stained_glass",
    "purple_stained_glass",
    "blue_stained_glass",
    "brown_stained_glass",
    "green_stained_glass",
    "red_stained_glass",
    "black_stained_glass",
    "oak_trapdoor",
    "spruce_trapdoor",
    "birch_trapdoor",
    "jungle_trapdoor",
    "acacia_trapdoor",
    "dark_oak_trapdoor",
    "stone_bricks",
    "mossy_stone_bricks",
    "cracked_stone_bricks",
    "chiseled_stone_bricks",
    "infested_stone",
    "infested_cobblestone",
    "infested_stone_bricks",
    "infested_mossy_stone_bricks",
    "infested_cracked_stone_bricks",
    "infested_chiseled_stone_bricks",
    "brown_mushroom_block",
    "red_mushroom_block",
    "mushroom_stem",
    "iron_bars",
    "chain",
    "glass_pane",
    "melon",
    "attached_pumpkin_stem",
    "attached_melon_stem",
    "pumpkin_stem",
    "melon_stem",
    "vine",
    "oak_fence_gate",
    "brick_stairs",
    "stone_brick_stairs",
    "mycelium",
    "lily_pad",
    "nether_bricks",
    "nether_brick_fence",
    "nether_brick_stairs",
    "nether_wart",
    "enchanting_table",
    "brewing_stand",
    "cauldron",
    "end_portal",
    "end_portal_frame",
    "end_stone",
    "dragon_egg",
    "redstone_lamp",
    "cocoa",
    "sandstone_stairs",
    "emerald_ore",
    "ender_chest",
    "tripwire_hook",
    "tripwire",
    "emerald_block",
    "spruce_stairs",
    "birch_stairs",
    "jungle_stairs",
    "command_block",
    "beacon",
    "cobblestone_wall",
    "mossy_cobblestone_wall",
    "flower_pot",
    "potted_oak_sapling",
    "potted_spruce_sapling",
    "potted_birch_sapling",
    "potted_jungle_sapling",
    "potted_acacia_sapling",
    "potted_dark_oak_sapling",
    "potted_fern",
    "potted_dandelion",
    "potted_poppy",
    "potted_blue_orchid",
    "potted_allium",
    "potted_azure_bluet",
    "potted_red_tulip",
    "potted_orange_tulip",
    "potted_white_tulip",
    "potted_pink_tulip",
    "potted_oxeye_daisy",
    "potted_cornflower",
    "potted_lily_of_the_valley",
    "potted_wither_rose",
    "potted_red_mushroom",
    "potted_brown_mushroom",
    "potted_dead_bush",
    "potted_cactus",
    "carrots",
    "potatoes",
    "oak_button",
    "spruce_button",
    "birch_button",
    "jungle_button",
    "acacia_button",
    "dark_oak_button",
    "skeleton_skull",
    "skeleton_wall_skull",
    "wither_skeleton_skull",
    "wither_skeleton_wall_skull",
    "zombie_head",
    "zombie_wall_head",
    "player_head",
    "player_wall_head",
    "creeper_head",
    "creeper_wall_head",
    "dragon_head",
    "dragon_wall_head",
    "anvil",
    "chipped_anvil",
    "damaged_anvil",
    "trapped_chest",
    "light_weighted_pressure_plate",
    "heavy_weighted_pressure_plate",
    "comparator",
    "daylight_detector",
    "redstone_block",
    "nether_quartz_ore",
    "hopper",
    "quartz_block",
    "chiseled_quartz_block",
    "quartz_pillar",
    "quartz_stairs",
    "activator_rail",
    "dropper",
    "white_terracotta",
    "orange_terracotta",
    "magenta_terracotta",
    "light_blue_terracotta",
    "yellow_terracotta",
    "lime_terracotta",
    "pink_terracotta",
    "gray_terracotta",
    "light_gray_terracotta",
    "cyan_terracotta",
    "purple_terracotta",
    "blue_terracotta",
    "brown_terracotta",
    "green_terracotta",
    "red_terracotta",
    "black_terracotta",
    "white_stained_glass_pane",
    "orange_stained_glass_pane",
    "magenta_stained_glass_pane",
    "light_blue_stained_glass_pane",
    "yellow_stained_glass_pane",
    "lime_stained_glass_pane",
    "pink_stained_glass_pane",
    "gray_stained_glass_pane",
    "light_gray_stained_glass_pane",
    "cyan_stained_glass_pane",
    "purple_stained_glass_pane",
    "blue_stained_glass_pane",
    "brown_stained_glass_pane",
    "green_stained_glass_pane",
    "red_stained_glass_pane",
    "black_stained_glass_pane",
    "acacia_stairs",
    "dark_oak_stairs",
    "slime_block",
    "barrier",
    "iron_trapdoor",
    "prismarine",
    "prismarine_bricks",
    "dark_prismarine",
    "prismarine_stairs",
    "prismarine_brick_stairs",
    "dark_prismarine_stairs",
    "prismarine_slab",
    "prismarine_brick_slab",
    "dark_prismarine_slab",
    "sea_lantern",
    "hay_block",
    "white_carpet",
    "orange_carpet",
    "magenta_carpet",
    "light_blue_carpet",
    "yellow_carpet",
    "lime_carpet",
    "pink_carpet",
    "gray_carpet",
    "light_gray_carpet",
    "cyan_carpet",
    "purple_carpet",
    "blue_carpet",
    "brown_carpet",
    "green_carpet",
    "red_carpet",
    "black_carpet",
    "terracotta",
    "coal_block",
    "packed_ice",
    "sunflower",
    "lilac",
    "rose_bush",
    "peony",
    "tall_grass",
    "large_fern",
    "white_banner",
    "orange_banner",
    "magenta_banner",
    "light_blue_banner",
    "yellow_banner",
    "lime_banner",
    "pink_banner",
    "gray_banner",
    "light_gray_banner",
    "cyan_banner",
    "purple_banner",
    "blue_banner",
    "brown_banner",
    "green_banner",
    "red_banner",
    "black_banner",
    "white_wall_banner",
    "orange_wall_banner",
    "magenta_wall_banner",
    "light_blue_wall_banner",
    "yellow_wall_banner",
    "lime_wall_banner",
    "pink_wall_banner",
    "gray_wall_banner",
    "light_gray_wall_banner",
    "cyan_wall_banner",
    "purple_wall_banner",
    "blue_wall_banner",
    "brown_wall_banner",
    "green_wall_banner",
    "red_wall_banner",
    "black_wall_banner",
    "red_sandstone",
    "chiseled_red_sandstone",
    "cut_red_sandstone",
    "red_sandstone_stairs",
    "oak_slab",
    "spruce_slab",
    "birch_slab",
    "jungle_slab",
    "acacia_slab",
    "dark_oak_slab",
    "stone_slab",
    "smooth_stone_slab",
    "sandstone_slab",
    "cut_sandstone_slab",
    "petrified_oak_slab",
    "cobblestone_slab",
    "brick_slab",
    "stone_brick_slab",
    "nether_brick_slab",
    "quartz_slab",
    "red_sandstone_slab",
    "cut_red_sandstone_slab",
    "purpur_slab",
    "smooth_stone",
    "smooth_sandstone",
    "smooth_quartz",
    "smooth_red_sandstone",
    "spruce_fence_gate",
    "birch_fence_gate",
    "jungle_fence_gate",
    "acacia_fence_gate",
    "dark_oak_fence_gate",
    "spruce_fence",
    "birch_fence",
    "jungle_fence",
    "acacia_fence",
    "dark_oak_fence",
    "spruce_door",
    "birch_door",
    "jungle_door",
    "acacia_door",
    "dark_oak_door",
    "end_rod",
    "chorus_plant",
    "chorus_flower",
    "purpur_block",
    "purpur_pillar",
    "purpur_stairs",
    "end_stone_bricks",
    "beetroots",
    "grass_path",
    "end_gateway",
    "repeating_command_block",
    "chain_command_block",
    "frosted_ice",
    "magma_block",
    "nether_wart_block",
    "red_nether_bricks",
    "bone_block",
    "structure_void",
    "observer",
    "shulker_box",
    "white_shulker_box",
    "orange_shulker_box",
    "magenta_shulker_box",
    "light_blue_shulker_box",
    "yellow_shulker_box",
    "lime_shulker_box",
    "pink_shulker_box",
    "gray_shulker_box",
    "light_gray_shulker_box",
    "cyan_shulker_box",
    "purple_shulker_box",
    "blue_shulker_box",
    "brown_shulker_box",
    "green_shulker_box",
    "red_shulker_box",
    "black_shulker_box",
    "white_glazed_terracotta",
    "orange_glazed_terracotta",
    "magenta_glazed_terracotta",
    "light_blue_glazed_terracotta",
    "yellow_glazed_terracotta",
    "lime_glazed_terracotta",
    "pink_glazed_terracotta",
    "gray_glazed_terracotta",
    "light_gray_glazed_terracotta",
    "cyan_glazed_terracotta",
    "purple_glazed_terracotta",
    "blue_glazed_terracotta",
    "brown_glazed_terracotta",
    "green_glazed_terracotta",
    "red_glazed_terracotta",
    "black_glazed_terracotta",
    "white_concrete",
    "orange_concrete",
    "magenta_concrete",
    "light_blue_concrete",
    "yellow_concrete",
    "lime_concrete",
    "pink_concrete",
    "gray_concrete",
    "light_gray_concrete",
    "cyan_concrete",
    "purple_concrete",
    "blue_concrete",
    "brown_concrete",
    "green_concrete",
    "red_concrete",
    "black_concrete",
    "white_concrete_powder",
    "orange_concrete_powder",
    "magenta_concrete_powder",
    "light_blue_concrete_powder",
    "yellow_concrete_powder",
    "lime_concrete_powder",
    "pink_concrete_powder",
    "gray_concrete_powder",
    "light_gray_concrete_powder",
    "cyan_concrete_powder",
    "purple_concrete_powder",
    "blue_concrete_powder",
    "brown_concrete_powder",
    "green_concrete_powder",
    "red_concrete_powder",
    "black_concrete_powder",
    "kelp",
    "kelp_plant",
    "dried_kelp_block",
    "turtle_egg",
    "dead_tube_coral_block",
    "dead_brain_coral_block",
    "dead_bubble_coral_block",
    "dead_fire_coral_block",
    "dead_horn_coral_block",
    "tube_coral_block",
    "brain_coral_block",
    "bubble_coral_block",
    "fire_coral_block",
    "horn_coral_block",
    "dead_tube_coral",
    "dead_brain_coral",
    "dead_bubble_coral",
    "dead_fire_coral",
    "dead_horn_coral",
    "tube_coral",
    "brain_coral",
    "bubble_coral",
    "fire_coral",
    "horn_coral",
    "dead_tube_coral_fan",
    "dead_brain_coral_fan",
    "dead_bubble_coral_fan",
    "dead_fire_coral_fan",
    "dead_horn_coral_fan",
    "tube_coral_fan",
    "brain_coral_fan",
    "bubble_coral_fan",
    "fire_coral_fan",
    "horn_coral_fan",
    "dead_tube_coral_wall_fan",
    "dead_brain_coral_wall_fan",
    "dead_bubble_coral_wall_fan",
    "dead_fire_coral_wall_fan",
    "dead_horn_coral_wall_fan",
    "tube_coral_wall_fan",
    "brain_coral_wall_fan",
    "bubble_coral_wall_fan",
    "fire_coral_wall_fan",
    "horn_coral_wall_fan",
    "sea_pickle",
    "blue_ice",
    "conduit",
    "bamboo_sapling",
    "bamboo",
    "potted_bamboo",
    "void_air",
    "cave_air",
    "bubble_column",
    "polished_granite_stairs",
    "smooth_red_sandstone_stairs",
    "mossy_stone_brick_stairs",
    "polished_diorite_stairs",
    "mossy_cobblestone_stairs",
    "end_stone_brick_stairs",
    "stone_stairs",
    "smooth_sandstone_stairs",
    "smooth_quartz_stairs",
    "granite_stairs",
    "andesite_stairs",
    "red_nether_brick_stairs",
    "polished_andesite_stairs",
    "diorite_stairs",
    "polished_granite_slab",
    "smooth_red_sandstone_slab",
    "mossy_stone_brick_slab",
    "polished_diorite_slab",
    "mossy_cobblestone_slab",
    "end_stone_brick_slab",
    "smooth_sandstone_slab",
    "smooth_quartz_slab",
    "granite_slab",
    "andesite_slab",
    "red_nether_brick_slab",
    "polished_andesite_slab",
    "diorite_slab",
    "brick_wall",
    "prismarine_wall",
    "red_sandstone_wall",
    "mossy_stone_brick_wall",
    "granite_wall",
    "stone_brick_wall",
    "nether_brick_wall",
    "andesite_wall",
    "red_nether_brick_wall",
    "sandstone_wall",
    "end_stone_brick_wall",
    "diorite_wall",
    "scaffolding",
    "loom",
    "barrel",
    "smoker",
    "blast_furnace",
    "cartography_table",
    "fletching_table",
    "grindstone",
    "lectern",
    "smithing_table",
    "stonecutter",
    "bell",
    "lantern",
    "soul_lantern",
    "campfire",
    "soul_campfire",
    "sweet_berry_bush",
    "warped_stem",
    "stripped_warped_stem",
    "warped_hyphae",
    "stripped_warped_hyphae",
    "warped_nylium",
    "warped_fungus",
    "warped_wart_block",
    "warped_roots",
    "nether_sprouts",
    "crimson_stem",
    "stripped_crimson_stem",
    "crimson_hyphae",
    "stripped_crimson_hyphae",
    "crimson_nylium",
    "crimson_fungus",
    "shroomlight",
    "weeping_vines",
    "weeping_vines_plant",
    "twisting_vines",
    "twisting_vines_plant",
    "crimson_roots",
    "crimson_planks",
    "warped_planks",
    "crimson_slab",
    "warped_slab",
    "crimson_pressure_plate",
    "warped_pressure_plate",
    "crimson_fence",
    "warped_fence",
    "crimson_trapdoor",
    "warped_trapdoor",
    "crimson_fence_gate",
    "warped_fence_gate",
    "crimson_stairs",
    "warped_stairs",
    "crimson_button",
    "warped_button",
    "crimson_door",
    "warped_door",
    "crimson_sign",
    "warped_sign",
    "crimson_wall_sign",
    "warped_wall_sign",
    "structure_block",
    "jigsaw",
    "composter",
    "target",
    "bee_nest",
    "beehive",
    "honey_block",
    "honeycomb_block",
    "netherite_block",
    "ancient_debris",
    "crying_obsidian",
    "respawn_anchor",
    "potted_crimson_fungus",
    "potted_warped_fungus",
    "potted_crimson_roots",
    "potted_warped_roots",
    "lodestone",
    "blackstone",
    "blackstone_stairs",
    "blackstone_wall",
    "blackstone_slab",
    "polished_blackstone",
    "polished_blackstone_bricks",
    "cracked_polished_blackstone_bricks",
    "chiseled_polished_blackstone",
    "polished_blackstone_brick_slab",
    "polished_blackstone_brick_stairs",
    "polished_blackstone_brick_wall",
    "gilded_blackstone",
    "polished_blackstone_stairs",
    "polished_blackstone_slab",
    "polished_blackstone_pressure_plate",
    "polished_blackstone_button",
    "polished_blackstone_wall",
    "chiseled_nether_bricks",
    "cracked_nether_bricks",
    "quartz_bricks"
]


// let map = Object.fromEntries(blocks.map(k=>[k, 'gold_block']));
let map = {}

// blocks to yellow glass
map = Object.assign(map, Object.fromEntries(["#impermeable", "#leaves"].map(k => [k, 'yellow_stained_glass'])));

// to yellow glass pane
map = Object.assign(map, Object.fromEntries(["#fences", "#fence_gates", "#walls", "iron_bars", "glass_pane", "chain", ...blocks.filter(x=>x.match(/^(.+_stained_glass_pane)$/))].map(k => [k, 'yellow_stained_glass_pane'])));
// to pressure plate
map = Object.assign(map, Object.fromEntries(["#carpets", "snow"].map(k => [k, 'yellow_carpet'])));
map = Object.assign(map, Object.fromEntries(["#pressure_plates", "repeater", "comparator"].map(k => [k, 'light_weighted_pressure_plate'])));
map = Object.assign(map, Object.fromEntries(["shroomlight", "redstone_lamp"].map(k => [k, 'glowstone'])));


// remove duplicates
map = Object.fromEntries(Object.entries(map).filter(x=>x[0]!==x[1]));

// doors
// const doors = blocks.filter(x=>x.match(/^.+_door$/));
// const doors = ['#wooden_doors']


// beds
// const beds = blocks.filter(x=>x.match(/^.+_bed$/));
// flowers

const repblocks = ["gold_block", "yellow_terracotta", "yellow_glazed_terracotta", "yellow_concrete"]

// immune blocks
const immune = [...repblocks, "#doors", "#saplings", "#crops", "#rails", "#buttons", "#flower_pots", "#trapdoors", "kelp", "kelp_plant", "red_mushroom", "brown_mushroom", "nether_sprouts", "nether_wart", "turtle_egg", "chorus_plant", "chorus_flower", "bamboo", "end_rod", "tripwire_hook", "tripwire", "lever", "cobweb", "sugar_cane", "sweet_berry_bush", "lily_pad", "crimson_roots", "crimson_fungus", "warped_roots", "warped_fungus", "spawner", "dead_bush", "fire", "vine", "weeping_vines", "weeping_vines_plant", "twisting_vines", "twisting_vines_plant", "ladder", "seagrass", "tall_seagrass", "sea_pickle", "conduit", "bell", "torch", "wall_torch", "soul_torch", "soul_wall_torch", "redstone_torch", "redstone_wall_torch", "water", "lava", "grass", "tall_grass", "fern", "large_fern", "air", "void_air", "cave_air", "barrier", "bedrock", "#portals", "#wither_immune"];

norep = ['#beds', ...Object.values(map).filter((v,i,l)=>l.indexOf(v)==i)];

// immune.forEach(e => delete map[e]);
// beds.forEach(e => delete map[e]);

let str = "gamerule doTileDrops false\n";

for (const [k, v] of Object.entries(map)) {
  if (k===v) continue;
  str += `fill ~ ~ ~ ~ ~ ~ ${v} replace ${k}\n`;
}

str += `execute `

for (const v of norep) {
	str+=`unless block ~ ~ ~ ${v} `;
}

str+=`as @s at @s run function midas:setrand\n`

const dirs = {
	"east":[1,0, 0],
	"west":[-1,0, 1],
	"south":[0,1, 2],
	"north":[0,-1, 3]
}

const dc = Object.keys(dirs).length;

str+='\nscoreboard players set @s bed -1\n'

for(const d of Object.keys(dirs)) {
	str+= `execute unless block ~ ~ ~ yellow_bed if block ~ ~ ~ #beds[facing=${d},part=foot] run scoreboard players set @s bed ${dirs[d][2]}\n`
	str+= `execute if score @s bed matches ${dirs[d][2]} run fill ~ ~ ~ ~${dirs[d][0]} ~ ~${dirs[d][1]} air\n`
	str+= `execute if score @s bed matches ${dirs[d][2]} run setblock ~ ~ ~ yellow_bed[facing=${d},part=foot]\n`
	str+= `execute if score @s bed matches ${dirs[d][2]} run setblock ~${dirs[d][0]} ~ ~${dirs[d][1]} yellow_bed[facing=${d},part=head]\n`
}

console.log(`${str}# execute as @s at @s if block ~ ~ ~ #wooden_doors run function midas:replace_door
execute as @e[type=sheep,nbt=!{Color:4b},distance=..1.5] run data modify entity @s Color set value 4b
gamerule doTileDrops true`);

str = '';

str+='scoreboard players set @s door -1\n'
for(const d of Object.keys(dirs)) {
	for (let o = 0; o <= 1; o++) {
		for (let p = 0; p <= 1; p++) {
			for (let h = 0; h <= 1; h++) {
				str+= `execute if block ~ ~ ~ #wooden_doors[facing=${d},half=lower,open=${!!o},powered=${!!p},hinge=${["left","right"][h]}] run scoreboard players set @s door ${((h*2+o)*2+p)*dc+dirs[d][2]}\n`
			}
		}
	}
}

str+= `execute if score @s door matches 0.. run fill ~ ~ ~ ~ ~1 ~ air\n`
for(const d of Object.keys(dirs)) {
	for (let o = 0; o <= 1; o++) {
		for (let p = 0; p <= 1; p++) {
			for (let h = 0; h <= 1; h++) {
				str+= `execute if score @s door matches ${((h*2+o)*2+p)*dc+dirs[d][2]} run setblock ~ ~ ~ iron_door[facing=${d},half=lower,open=${!!o},powered=${!!p},hinge=${["left","right"][h]}]\n`
				str+= `execute if score @s door matches ${((h*2+o)*2+p)*dc+dirs[d][2]} run setblock ~ ~1 ~ iron_door[facing=${d},half=upper,open=${!!o},powered=${!!p},hinge=${["left","right"][h]}]\n`
			}
		}
	}
}

console.log(str);

let nospread = [...Object.values(map).filter((v, i, s) => s.indexOf(v) == i), ...immune]

str = ''

for(const v of nospread) {
	str+=`unless block ~ ~ ~ ${v} `
}

console.log(`execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=midas,distance=..0.01] ${str}run function midas:_spawnaec`)

str = ''
for (let i = -1; i <= 1; i++) {
	for (let ii = -1; ii <= 1; ii++) {
		for (let iii = -1; iii <= 1; iii++) {
			if (i*ii*iii === 0 && (i > 0 || ii > 0 || iii > 0)) str+=`execute as @s positioned ~${i} ~${ii} ~${iii} run function midas:spawnaec\n`;
		}
	}
}

console.log(`${str}\nkill @s`)

str = '';

for (let i = 0; i < repblocks.length; i++) {
    str+=`summon armor_stand ${i+1} -10 1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rand"]}\n`;
}

console.log(str);


str = 'execute as @s run function midas:updaterand\n\n';

for(let i = 0; i < repblocks.length; i++){
    str+=`execute if score @s rand matches ${i+1} run setblock ~ ~ ~ ${repblocks[i]}\n`
}

console.log(str);

let slots = {
    "armor.feet":100,
    "armor.legs":101,
    "armor.chest":102,
    "armor.head":103,
    "weapon.offhand":-106
}

slots = Object.assign(slots, Object.fromEntries(Array.from(Array(36).keys()).map(x=>[`container.${x}`, x])));

const tools = ["hoe", "sword", "axe", "shovel", "pickaxe"];
const tooltypes = ["wooden", "stone", "iron", "diamond", "netherite"];

const armor = ["boots", "leggings", "chestplate", "helmet"];
const armortypes = ["leather", "chainmail", "iron", "diamond", "netherite"];

const itypes = [...armor, ...tools];

let talist = [];

for (const t of tools) {
    for (const tt of tooltypes) {
        talist.push(`${tt}_${t}`)
    }
}

for (const t of armor) {
    for (const tt of armortypes) {
        talist.push(`${tt}_${t}`)
    }
}

str = '';
for(const i of itypes) {
    str+=`scoreboard objectives add ${i} dummy\n`
}

console.log(str);

str = '';

for(const i of itypes) {
    str+=`scoreboard players set @a ${i} 0\n`
}

for(const i of talist) {
    str+=`scoreboard players set @a[nbt={Inventory:[{id:"minecraft:${i}"}]}] ${i.split('_')[1]} 1\n`
}

for(const i of itypes) {
    str+=`execute as @a[scores={${i}=1}] run function midas:replaceinv_${i}\n`
}

console.log(str);

for (const i of itypes) {
    str = '';

    for (const [k,v] of Object.entries(slots)) {
        for (const a of talist) {
            if (a.split('_')[1] !== i) continue;
            str+=`replaceitem entity @s[nbt={Inventory:[{Slot:${v}b,id:"minecraft:${a}"}]}] ${k} golden_${i}\n`
        }
    }

    console.log(str);
}
