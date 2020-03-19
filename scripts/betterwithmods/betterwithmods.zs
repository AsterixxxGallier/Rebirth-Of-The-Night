import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;

//Bark fixes
//Also add axes to oredict in minecraft.zs
//Birch and Alicio give 8 (immeeeersion)
recipes.remove(<betterwithmods:bark:0>);
recipes.remove(<betterwithmods:bark:1>);
recipes.remove(<betterwithmods:bark:2>);
recipes.remove(<betterwithmods:bark:3>);
recipes.remove(<betterwithmods:bark:4>);
recipes.remove(<betterwithmods:bark:5>);
recipes.remove(<betterwithmods:bark:6>);
recipes.addShapeless("axe_blookwood_bark",<betterwithmods:bark:6>*4,[<ore:toolAxe>.transformDamage(),<betterwithmods:blood_log>]);
recipes.addShapeless("axe_oak_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<minecraft:log:0>]);
recipes.addShapeless("axe_spruce_bark",<betterwithmods:bark:1>*4,[<ore:toolAxe>.transformDamage(),<minecraft:log:1>]);
recipes.addShapeless("axe_birch_bark",<betterwithmods:bark:2>*8,[<ore:toolAxe>.transformDamage(),<minecraft:log:2>]);
recipes.addShapeless("axe_jungle_bark",<betterwithmods:bark:3>*4,[<ore:toolAxe>.transformDamage(),<minecraft:log:3>]);
recipes.addShapeless("axe_acacia_bark",<betterwithmods:bark:4>*4,[<ore:toolAxe>.transformDamage(),<minecraft:log2:0>]);
recipes.addShapeless("axe_dark_oak_bark",<betterwithmods:bark:5>*4,[<ore:toolAxe>.transformDamage(),<minecraft:log2:1>]);
recipes.addShapeless("axe_sacred_oak_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_0:4>]);
recipes.addShapeless("axe_cherry_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_0:5>]);
recipes.addShapeless("axe_umbran_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_0:6>]);
recipes.addShapeless("axe_fir_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_0:7>]);
recipes.addShapeless("axe_ethereal_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_1:4>]);
recipes.addShapeless("axe_magic_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_1:5>]);
recipes.addShapeless("axe_mangrove_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_1:6>]);
recipes.addShapeless("axe_palm_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_1:7>]);
recipes.addShapeless("axe_redwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_2:4>]);
recipes.addShapeless("axe_willow_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_2:5>]);
recipes.addShapeless("axe_pine_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_2:6>]);
recipes.addShapeless("axe_hellbark_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_2:7>]);
recipes.addShapeless("axe_jacaranda_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_3:4>]);
recipes.addShapeless("axe_mahogany_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_3:5>]);
recipes.addShapeless("axe_ebony_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_3:6>]);
recipes.addShapeless("axe_eucalyptus_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<biomesoplenty:log_3:7>]);
recipes.addShapeless("axe_olive_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<rustic:log:0>]);
recipes.addShapeless("axe_ironwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<rustic:log:1>]);
recipes.addShapeless("axe_wyrmwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<stygian:endlog>]);
recipes.addShapeless("axe_maple_bark",<betterwithmods:bark:1>*4,[<ore:toolAxe>.transformDamage(),<harvestcraft:pammaple>]);
recipes.addShapeless("axe_paperbark_bark",<betterwithmods:bark:3>*4,[<ore:toolAxe>.transformDamage(),<harvestcraft:pampaperbark>]);
recipes.addShapeless("axe_cinnamon_bark",<betterwithmods:bark:3>*4,[<ore:toolAxe>.transformDamage(),<harvestcraft:pamcinnamon>]);
recipes.addShapeless("axe_twilight_oak_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:twilight_log:0>]);
recipes.addShapeless("axe_canopy_tree_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:twilight_log:1>]);
recipes.addShapeless("axe_twilight_mangrove_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:twilight_log:2>]);
recipes.addShapeless("axe_darkwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:twilight_log:3>]);
recipes.addShapeless("axe_timewood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:magic_log:0>]);
recipes.addShapeless("axe_transwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:magic_log:1>]);
recipes.addShapeless("axe_minewood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:magic_log:2>]);
recipes.addShapeless("axe_sortingwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.transformDamage(),<twilightforest:magic_log:3>]);

mods.betterwithmods.Saw.remove(<twilightforest:twilight_log:3>);
mods.betterwithmods.Saw.add(<twilightforest:twilight_log:3>,[<twilightforest:dark_planks>*4,<betterwithmods:bark:0>,<betterwithmods:material:22>*2]);

//Fix trapdoor recipes
val skyplank = <aether_legacy:skyroot_plank>;
recipes.remove(<aether_legacy:skyroot_trapdoor>);
recipes.addShaped("aether_legacy_skyroot_trapdoor", <aether_legacy:skyroot_trapdoor>*6,
    [[null,null,null],
    [skyplank,skyplank,skyplank],
    [skyplank,skyplank,skyplank]]);
recipes.removeByRecipeName("betternether:stalagnate_planks_trapdoor");
recipes.removeByRecipeName("betternether:stalagnate_planks_chest");
recipes.removeByRecipeName("betterwithmods:quark/spruce_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/birch_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/acacia_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/dark_oak_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/jungle_trapdoor");
recipes.removeByRecipeName("betterwithmods:decompress/ender_pearl_decompress");

recipes.removeByRecipeName("betterwithmods:items/material/material.padding");
recipes.addShapeless("betterwithmods_items/material/material_padding", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);

mods.betterwithmods.Mill.addRecipe([<minecraft:rotten_flesh>],[<minecraft:leather>]);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:candle_holder>); 
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:8>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);

mods.jei.JEI.removeAndHide(<betterwithmods:raw_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:ham_and_eggs>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_scrambled_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_scrambled_egg>);
furnace.remove(<betterwithmods:cooked_scrambled_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_pastry:4>);
mods.jei.JEI.removeAndHide(<betterwithmods:apple_pie>);
furnace.remove(<betterwithmods:apple_pie>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_omelet>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_omelet>);
furnace.remove(<betterwithmods:cooked_omelet>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_kebab>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_kebab>);
furnace.remove(<betterwithmods:cooked_kebab>);
mods.jei.JEI.removeAndHide(<betterwithmods:creeper_oyster>);
mods.ltt.LootTable.removeGlobalItem("betterwithmods:creeper_oyster");
mods.jei.JEI.removeAndHide(<betterwithmods:stump_remover>);
mods.jei.JEI.removeAndHide(<betterwithmods:beef_dinner>);
mods.jei.JEI.removeAndHide(<betterwithmods:beef_potatoes>);
mods.jei.JEI.removeAndHide(<betterwithmods:chocolate>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:chocolate>]);
mods.jei.JEI.removeAndHide(<betterwithmods:chowder>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:chowder>]);
mods.jei.JEI.removeAndHide(<betterwithmods:hearty_stew>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:hearty_stew>]);
mods.jei.JEI.removeAndHide(<betterwithmods:pork_dinner>);
mods.jei.JEI.removeAndHide(<betterwithmods:mystery_meat>);
mods.ltt.LootTable.removeGlobalItem("betterwithmods:mystery_meat");
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooked_mystery_meat>);
recipes.remove(<betterwithmods:donut>);
mods.jei.JEI.removeAndHide(<betterwithmods:donut>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:donut>]);

mods.jei.JEI.removeAndHide(<betterwithmods:dirt_pile>);
mods.jei.JEI.removeAndHide(<betterwithmods:gravel_pile>);
mods.jei.JEI.removeAndHide(<betterwithmods:sand_pile>);
mods.jei.JEI.removeAndHide(<betterwithmods:red_sand_pile>);
recipes.removeByRecipeName("betterwithmods:piles/dirt_slab_0");

recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

mods.betterwithmods.Cauldron.remove([<minecraft:mushroom_stew>]);
mods.betterwithmods.Cauldron.remove([<minecraft:rabbit_stew>]);
mods.betterwithmods.Cauldron.addUnstoked([<minecraft:cooked_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);

mods.betterwithmods.Cauldron.addUnstoked([<quark:crab_leg>],[<quark:cooked_crab_leg>]);
mods.betterwithmods.Cauldron.addUnstoked([<harvestcraft:grubitem>],[<harvestcraft:cookedgrubitem>]);
mods.betterwithmods.Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);

val arrayLeather = [<primitivemobs:cooked_dodo>,<animania:cooked_prime_beef>,<animania:cooked_prime_mutton>,<animania:cooked_prime_pork>,<animania:cooked_prime_chicken>,<animania:cooked_horse>,<animania:cooked_prime_rabbit>,<animania:cooked_frog_legs>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>,<animania:cooked_chevon>,<animania:cooked_prime_chevon>,<aether_legacy:burnt_cockatrice>,<aether_legacy:cooked_enchanted_cockatrice>,<betteranimalsplus:crab_meat_cooked>,<mod_lavacow:mimic_claw_cooked>,<harvestcraft:crabcookeditem>,<quark:cooked_crab_leg>,<betteranimalsplus:venisoncooked>,<twilightforest:cooked_venison>,<betterwithmods:cooked_bat_wing>,<mod_lavacow:piranha_cooked>,<mod_lavacow:zombiepiranha_item_cooked>,<twilightforest:cooked_meef>] as IItemStack[];

for cookedFood in arrayLeather{
    mods.betterwithmods.Cauldron.addUnstoked([cookedFood],[<minecraft:leather>]);
    furnace.addRecipe(<minecraft:leather>,cookedFood,0.1);
}

mods.jei.JEI.removeAndHide(<betterwithmods:material:13>); # tallow
mods.jei.JEI.removeAndHide(<betterwithmods:material:47>); # chainmail
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:13>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:29>]); # blasting oil
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:50>]); # soal

mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);



mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);

mods.jei.JEI.removeAndHide(<betterwithmods:material:45>); # diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*4,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
recipes.addShapeless("Hemp Seeds", <betterwithmods:hemp>,[<ore:cropHemp>]);

mods.jei.JEI.removeAndHide(<betterwithmods:chicken_soup>);
mods.jei.JEI.removeAndHide(<betterwithmods:cobblestone:0>);
mods.jei.JEI.removeAndHide(<betterwithmods:cobblestone:1>);
mods.jei.JEI.removeAndHide(<betterwithmods:cobblestone:2>);
furnace.remove(<minecraft:stone:1>);
furnace.remove(<minecraft:stone:3>);
furnace.remove(<minecraft:stone:5>);

//Descriptions
mods.jei.JEI.addDescription(<betterwithmods:material:14>,"Used as a late-game crafting material. It can craft a Mattock- the best mining tool available! It is also needed for some advanced contraptions.");
mods.jei.JEI.addDescription(<betterwithmods:hemp>,"An extremely useful plant, it can make very high quality and durable fibers with a variety of uses, like sails and different kinds of cloth.");
mods.jei.JEI.addDescription(<betterwithmods:material:3>,"High quality fiber used in advanced recipes where string falls short; can be made by interlacing some plants.");
mods.jei.JEI.addDescription(<betterwithmods:saw>,"Much more precise than any axe, the saw can make some nice half-blocks.");
mods.jei.JEI.addDescription(<betterwithmods:material:11>, "Can be crafted using any Wooden Slab, or cheaper using Wooden Siding once you build a Saw!");


// Remove unused refined weapons
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_sword>);

