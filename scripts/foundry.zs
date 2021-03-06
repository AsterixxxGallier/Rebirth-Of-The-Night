import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.advancedmortars.Mortar; //to make porcelain

/*
mB means miniBucket, forge's liquid metric unit
16  mB = 1 nugget
144 mB = 1 ingot
288 mB = 1 ore block
1 bucket = 6 ingots, 8 nuggets, 8 mB

1 ore block = 192 mb (ingot + 1/3 extra)
*/

//heat source
mods.foundry.Heating.addStateSource(<blockstate:betterwithmods:stoked_flame>, 1500);
mods.foundry.Heating.addStateSource(<blockstate:betterwithmods:creative_generator>, 2500);

//burner heater fuel
mods.foundry.BurnerHeater.clear();
mods.foundry.BurnerHeater.addFuel(<pyrotech:coal_coke_block>, 3200, 1800);

//recipes
mods.jei.JEI.removeAndHide(<foundry:componentblock>);
mods.jei.JEI.removeAndHide(<foundry:componentblock:1>);
mods.jei.JEI.removeAndHide(<foundry:componentblock:2>);
mods.jei.JEI.removeAndHide(<foundry:machine>);
mods.jei.JEI.removeAndHide(<foundry:machine:4>);
mods.jei.JEI.removeAndHide(<foundry:bronze_cauldron>);
mods.jei.JEI.removeAndHide(<foundry:mold:5>);
mods.jei.JEI.removeAndHide(<foundry:mold:6>);
mods.jei.JEI.removeAndHide(<foundry:mold:18>);
mods.jei.JEI.removeAndHide(<foundry:mold:19>);
mods.jei.JEI.removeAndHide(<foundry:mold:20>);
mods.jei.JEI.removeAndHide(<foundry:mold:21>);
mods.jei.JEI.removeAndHide(<foundry:casting_table:1>);
mods.jei.JEI.removeAndHide(<foundry:casting_table:2>);
mods.jei.JEI.removeAndHide(<foundry:small_clay>);
mods.jei.JEI.hideCategory("foundry.alloyingcrucible");
mods.jei.JEI.hideCategory("foundry.fluidheater");

recipes.remove(<foundry:machine:8>);
recipes.remove(<foundry:mold_station>);
recipes.remove(<foundry:burner_heater>);

recipes.addShaped("melting_crucible_standard", <foundry:machine:7>,[ //Melting Crucible Refractory
	[<betterwithmods:aesthetic:7>, <pyrotech:material:5>, <betterwithmods:aesthetic:7>],
    [<pyrotech:refractory_brick_block>, <betterwithmods:cooking_pot>, <pyrotech:refractory_brick_block>],
    [<betterwithmods:aesthetic:7>, <pyrotech:refractory_brick_block>, <betterwithmods:aesthetic:7>]
]);
recipes.addShaped("melting_crucible_advanced", <foundry:machine:6>,[ //Melting Crucible Porcelain
	[<betterwithmods:aesthetic:7>, <ceramics:unfired_clay:5>, <betterwithmods:aesthetic:7>],
    [<ceramics:clay_hard>, <foundry:machine:7> | <betterwithmods:cooking_pot>, <ceramics:clay_hard>],
    [<betterwithmods:aesthetic:7>, <ceramics:clay_hard>, <betterwithmods:aesthetic:7>]
]);

recipes.addShaped("metal_infuser", <foundry:machine:3>,[ //metal_infuser
	[null, <ore:hopper>, null],
    [<ceramics:unfired_clay:5>, <foundry:machine:7>, <ceramics:unfired_clay:5>]
]);

recipes.addShaped("burner_heater", <foundry:burner_heater>,[ //Burner Heater (solid fuel)
	[<ceramics:clay_hard>, <betterwithmods:aesthetic:3>, <ceramics:clay_hard>],
    [<ceramics:clay_hard>, <betternether:cincinnasite_forge>, <ceramics:clay_hard>],
    [<ceramics:clay_hard>, <ceramics:clay_hard>, <ceramics:clay_hard>]
]);

recipes.addShaped("mold_station", <foundry:mold_station>,[ //Mold Station
	[<minecraft:crafting_table>],
    [<pyrotech:brick_kiln>]
]); 

mods.betterwithmods.Anvil.addShaped(<foundry:machine:2>, //Alloy Mixer
[
   [null, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
   [<ceramics:unfired_clay:5>, <pyrotech:bucket_stone>, <pyrotech:bucket_stone>, <minecraft:hopper>],
   [<ceramics:unfired_clay:5>, <pyrotech:bucket_stone>, <pyrotech:bucket_stone>, <minecraft:hopper>],
   [null, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
]);

//Porcelain Recipe
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_quartz");
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_bone_meal");

Mortar.addRecipe(["diamond", "obsidian"], <ceramics:unfired_clay:4> * 9, 5, [<netherex:rime_crystal>, <pyrotech:material:4> * 8]);
Mortar.addRecipe(["diamond", "obsidian"], <ceramics:unfired_clay:4>, 5, [<netherex:rime_crystal>, <minecraft:clay_ball> * 8]);


//Melting //Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int melting_point, @Optional int speed)

mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*144, <betterwithmods:material:14>, 2350);//SFS and SFS artifacts
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*(144*16), <betterwithmods:steel_block>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <ore:nuggetSoulforgedSteel>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact1>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact2>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact3>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact4>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact5>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact6>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact7>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact8>, 2350);
mods.foundry.Melting.addRecipe(<liquid:coade_stone>*144, <pyrotech:material:16>, 1373);//stone
mods.foundry.Melting.addRecipe(<liquid:coade_stone>*144, <pyrotech:rock>, 1373);
mods.foundry.Melting.addRecipe(<liquid:coade_stone>*(144*4), <ore:stone>, 1373);
mods.foundry.Melting.addRecipe(<liquid:coade_stone>*(144*4), <ore:cobblestone>, 1373);
mods.foundry.Melting.addRecipe(<liquid:coade_stone>*(144*4), <ore:StoneHugeBrick>, 1373);
mods.foundry.Melting.addRecipe(<liquid:coade_stone>*(144*4*8), <quark:sturdy_stone>, 1373);
mods.foundry.Melting.addRecipe(<liquid:electrum>*144, <ore:ingotElectrum>, 1400);//electrum
mods.foundry.Melting.addRecipe(<liquid:electrum>*(144*9), <ore:blockElectrum>, 1400);
mods.foundry.Melting.addRecipe(<liquid:electrum>*16, <contenttweaker:material_part:16>, 1400);
mods.foundry.Melting.addRecipe(<liquid:mythril>*144, <simpleores:mythril_ingot>, 2500);//mythril
mods.foundry.Melting.addRecipe(<liquid:mythril>*(144*9), <simpleores:mythril_block>, 2500);
mods.foundry.Melting.addRecipe(<liquid:mythril>*16, <contenttweaker:material_part:8>, 2500);
mods.foundry.Melting.addRecipe(<liquid:viridium>*144, <simpleores:adamantium_ingot>, 2500);//viridium
mods.foundry.Melting.addRecipe(<liquid:viridium>*(144*9), <contenttweaker:lunarinviridiumbrick>, 2500);
mods.foundry.Melting.addRecipe(<liquid:viridium>*16, <contenttweaker:material_part:10>, 2500);

mods.foundry.Melting.addRecipe(<liquid:blood>*288, <aether_legacy:vampire_blade>, 1450);//miscellaneous melting
mods.foundry.Melting.addRecipe(<liquid:ender_slag>*1000, <ore:endstone>, 1200);

//Removed molds
mods.foundry.MoldStation.removeRecipe([//Gear
1,0,1,0,1,0,
0,1,1,1,0,0,
1,1,1,1,1,0,
0,1,1,1,0,0,
1,0,1,0,1,0,
0,0,0,0,0,0
]);
mods.foundry.MoldStation.removeRecipe([//Rod
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);
mods.foundry.MoldStation.removeRecipe([//Slab
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,0,0,0,0,
4,4,4,4,4,4,
4,4,4,4,4,4,
4,4,4,4,4,4
]);
mods.foundry.MoldStation.removeRecipe([//Stairs
0,0,0,4,4,4,
0,0,0,4,4,4,
0,0,0,4,4,4,
4,4,4,4,4,4,
4,4,4,4,4,4,
4,4,4,4,4,4
]);
//Molds //moldStation.addRecipe(IItemStack output, int width, int height, int[] grid)
mods.foundry.MoldStation.addRecipe(<contenttweaker:dagger_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:longsword_mold>, 6, 6, [
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,1,4,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:saber_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,0,0,0,
0,1,2,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:rapier_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
1,2,1,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:greatsword_mold>, 6, 6, [
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,4,0,0,0,
1,2,2,2,1,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:hammer_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,2,3,2,0,0,
0,2,3,2,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:warhammer_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,2,3,0,0,0,
0,2,3,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:spear_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
0,1,2,1,0,0,
0,2,3,2,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:halberd_mold>, 6, 6, [
0,0,1,0,0,0,
0,1,1,0,0,0,
0,1,2,0,0,0,
0,1,2,1,1,0,
0,1,3,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:pike_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,1,1,0,0,
0,1,2,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:lance_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,1,0,0,
0,1,2,1,0,0,
0,1,0,1,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:throwing_knife_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,1,1,0,0,0,
0,1,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:throwing_axe_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,1,1,0,0,0,
0,1,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:javelin_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,1,1,1,0,0,
0,1,1,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:boomerang_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,0,0,0,0,
0,3,1,1,0,0,
0,1,0,0,0,0,
0,1,0,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:battleaxe_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
1,1,0,1,1,0,
1,2,3,2,1,0,
1,0,2,0,1,0,
0,0,2,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:mace_mold>, 6, 6, [
0,0,0,0,0,0,
0,1,1,1,0,0,
1,2,2,2,1,0,
1,2,2,2,1,0,
0,1,1,1,0,0,
0,1,0,1,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:glaive_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
1,2,2,0,0,0,
0,1,3,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:staff_mold>, 6, 6, [
0,0,0,0,1,2,
0,0,0,0,1,1,
0,0,0,0,0,0,
0,0,0,0,0,0,
1,1,0,0,0,0,
2,1,0,0,0,0
]);

//Casted IItemStacks //mods.foundry.Casting.addRecipe(IItemStack output, ILiquidStack input, IItemStack mold, @Optional IIngredient extra, @Optional int speed)
//casting weapons is -2 nugget per ingot cheaper than crafting them in a crafting table / steel anvil
//casting doesn't accept oredict entries for optional ingredient

// HELMET //
mods.foundry.Casting.removeRecipe(<liquid:iron>*720, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<minecraft:iron_helmet>, <liquid:iron>*((144*5)-(16*2*5)), <foundry:mold:14>);//iron
mods.foundry.Casting.removeRecipe(<liquid:gold>*720, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<minecraft:golden_helmet>, <liquid:gold>*((144*5)-(16*2*5)), <foundry:mold:14>);//gold
mods.foundry.Casting.addRecipe(<atop:mud_helmet>, <liquid:bronze>*((144*5)-(16*2*5)), <foundry:mold:14>);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:armor_silver_metal_helmet>, <liquid:silver>*((144*5)-(16*2*5)), <foundry:mold:14>);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_helmet>, <liquid:steel>*((144*5)-(16*2*5)), <foundry:mold:14>);//steel 
mods.foundry.Casting.addRecipe(<simpleores:adamantium_helmet>, <liquid:viridium>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_helmet>, <liquid:mythril>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_helmet>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_helmet>, <liquid:soulforged_steel>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//SFS

// CHESTPLATE //
mods.foundry.Casting.removeRecipe(<liquid:iron>*1152, <foundry:mold:15>);
mods.foundry.Casting.addRecipe(<minecraft:iron_chestplate>, <liquid:iron>*((144*8)-(16*2*8)), <foundry:mold:15>);//iron
mods.foundry.Casting.removeRecipe(<liquid:gold>*1152, <foundry:mold:15>);
mods.foundry.Casting.addRecipe(<minecraft:golden_chestplate>, <liquid:gold>*((144*8)-(16*2*8)), <foundry:mold:15>);//gold
mods.foundry.Casting.addRecipe(<atop:mud_chestplate>, <liquid:bronze>*((144*8)-(16*2*8)), <foundry:mold:15>);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:armor_silver_metal_chestplate>, <liquid:silver>*((144*8)-(16*2*8)), <foundry:mold:15>);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_chestplate>, <liquid:steel>*((144*8)-(16*2*8)), <foundry:mold:15>);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_chestplate>, <liquid:viridium>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_chestplate>, <liquid:mythril>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_chestplate>, <liquid:onyx_alloy>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_chest>, <liquid:soulforged_steel>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//SFS

// LEGGINGS //
mods.foundry.Casting.removeRecipe(<liquid:iron>*1008, <foundry:mold:16>);
mods.foundry.Casting.addRecipe(<minecraft:iron_leggings>, <liquid:iron>*((144*7)-(16*2*7)), <foundry:mold:16>);//iron
mods.foundry.Casting.removeRecipe(<liquid:gold>*1008, <foundry:mold:16>);
mods.foundry.Casting.addRecipe(<minecraft:golden_leggings>, <liquid:gold>*((144*7)-(16*2*7)), <foundry:mold:16>);//gold
mods.foundry.Casting.addRecipe(<atop:mud_leggings>, <liquid:bronze>*((144*7)-(16*2*7)), <foundry:mold:16>);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:armor_silver_metal_leggings>, <liquid:silver>*((144*7)-(16*2*7)), <foundry:mold:16>);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_leggings>, <liquid:steel>*((144*7)-(16*2*7)), <foundry:mold:16>);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_leggings>, <liquid:viridium>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_leggings>, <liquid:mythril>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_leggings>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_pants>, <liquid:soulforged_steel>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//SFS

// BOOTS //
mods.foundry.Casting.removeRecipe(<liquid:iron>*576, <foundry:mold:17>);
mods.foundry.Casting.addRecipe(<minecraft:iron_boots>, <liquid:iron>*((144*4)-(16*2*4)), <foundry:mold:17>);//iron
mods.foundry.Casting.removeRecipe(<liquid:gold>*576, <foundry:mold:17>);
mods.foundry.Casting.addRecipe(<minecraft:golden_boots>, <liquid:gold>*((144*4)-(16*2*4)), <foundry:mold:17>);//gold
mods.foundry.Casting.addRecipe(<atop:mud_boots>, <liquid:bronze>*((144*4)-(16*2*4)), <foundry:mold:17>);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:armor_silver_metal_boots>, <liquid:silver>*((144*4)-(16*2*4)), <foundry:mold:17>);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_boots>, <liquid:steel>*((144*4)-(16*2*4)), <foundry:mold:17>);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_boots>, <liquid:viridium>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_boots>, <liquid:mythril>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_boots>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_boots>, <liquid:soulforged_steel>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//SFS

// ARMING SWORD //
mods.foundry.Casting.removeRecipe(<liquid:iron>*288, <foundry:mold:10>, <minecraft:stick>);//iron
mods.foundry.Casting.addRecipe(<minecraft:iron_sword>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);
mods.foundry.Casting.removeRecipe(<liquid:gold>*288, <foundry:mold:10>, <minecraft:stick>);//gold
mods.foundry.Casting.addRecipe(<minecraft:golden_sword>, <liquid:gold>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);
mods.foundry.Casting.addRecipe(<atop:mud_sword>, <liquid:bronze>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:silver_sword>, <liquid:silver>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_cutlass>, <liquid:steel>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_sword>, <liquid:viridium>*((144*4)-(16*2*4)), <foundry:mold:10>, <minecraft:blaze_rod>);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_sword>, <liquid:mythril>*((144*4)-(16*2*4)), <foundry:mold:10>, <minecraft:blaze_rod>);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_sword>, <liquid:onyx_alloy>*((144*4)-(16*2*6)), <foundry:mold:10>, <minecraft:blaze_rod>);//onyx

// PICKAXE //
mods.foundry.Casting.removeRecipe(<liquid:iron>*432, <foundry:mold:8>, <minecraft:stick>*2);//iron
mods.foundry.Casting.addRecipe(<minecraft:iron_pickaxe>, <liquid:iron>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);
mods.foundry.Casting.removeRecipe(<liquid:gold>*432, <foundry:mold:8>, <minecraft:stick>*2);//gold
mods.foundry.Casting.addRecipe(<minecraft:golden_pickaxe>, <liquid:gold>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);
mods.foundry.Casting.addRecipe(<atop:mud_pickaxe>, <liquid:bronze>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:silver_pickaxe>, <liquid:silver>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_pickaxe>, <liquid:steel>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_pickaxe>, <liquid:viridium>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_pickaxe>, <liquid:mythril>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_pickaxe>, <liquid:onyx_alloy>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_pickaxe>, <liquid:soulforged_steel>*((144*3)-(16*2*3)), <foundry:mold:8>, <betterwithmods:material:36>*3);//SFS
mods.foundry.Casting.addRecipe(<pyrotech:diamond_hammer>, <liquid:soulforged_steel>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <betterwithmods:material:36>*4);

// MATTOCK //
mods.foundry.Casting.addRecipe(<betterwithmods:steel_mattock>, <liquid:soulforged_steel>*((144*4)-(16*2*4)), <contenttweaker:mattock_mold>, <betterwithmods:material:36>*3);//SFS

// AXE //
mods.foundry.Casting.removeRecipe(<liquid:iron>*432, <foundry:mold:9>, <minecraft:stick>*2);//iron
mods.foundry.Casting.addRecipe(<minecraft:iron_axe>, <liquid:iron>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);
mods.foundry.Casting.removeRecipe(<liquid:gold>*432, <foundry:mold:9>, <minecraft:stick>*2);//gold
mods.foundry.Casting.addRecipe(<minecraft:golden_axe>, <liquid:gold>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);
mods.foundry.Casting.addRecipe(<atop:mud_axe>, <liquid:bronze>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:silver_axe>, <liquid:silver>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_axe>, <liquid:steel>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_axe>, <liquid:viridium>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_axe>, <liquid:mythril>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_axe>, <liquid:onyx_alloy>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_axe>, <liquid:soulforged_steel>*((144*3)-(16*2*3)), <foundry:mold:9>, <betterwithmods:material:36>*3);//SFS

// SHOVEL //
mods.foundry.Casting.removeRecipe(<liquid:iron>*144, <foundry:mold:11>, <minecraft:stick>*2);//iron
mods.foundry.Casting.addRecipe(<minecraft:iron_shovel>, <liquid:iron>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);
mods.foundry.Casting.removeRecipe(<liquid:gold>*144, <foundry:mold:11>, <minecraft:stick>*2);//gold
mods.foundry.Casting.addRecipe(<minecraft:golden_shovel>, <liquid:gold>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);
mods.foundry.Casting.addRecipe(<atop:mud_shovel>, <liquid:bronze>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:silver_shovel>, <liquid:silver>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_shovel>, <liquid:steel>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_shovel>, <liquid:viridium>*((144*3)-(16*2*3)), <foundry:mold:11>, <minecraft:blaze_rod>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_shovel>, <liquid:mythril>*((144*3)-(16*2*3)), <foundry:mold:11>, <minecraft:blaze_rod>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_shovel>, <liquid:onyx_alloy>*((144*3)-(16*2*3)), <foundry:mold:11>, <minecraft:blaze_rod>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_shovel>, <liquid:soulforged_steel>*((144)-(16*2)), <foundry:mold:11>, <betterwithmods:material:36>*3);//SFS

// HOE //
mods.foundry.Casting.removeRecipe(<liquid:iron>*288, <foundry:mold:12>, <minecraft:stick>*2);//iron
mods.foundry.Casting.addRecipe(<minecraft:iron_hoe>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);
mods.foundry.Casting.removeRecipe(<liquid:gold>*288, <foundry:mold:12>, <minecraft:stick>*2);//gold
mods.foundry.Casting.addRecipe(<minecraft:golden_hoe>, <liquid:gold>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);
mods.foundry.Casting.addRecipe(<atop:mud_hoe>, <liquid:bronze>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:silver_hoe>, <liquid:silver>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_hoe>, <liquid:steel>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);//steel
mods.foundry.Casting.addRecipe(<simpleores:adamantium_hoe>, <liquid:viridium>*((144*3*4)-(16*2*3*4)), <foundry:mold:12>, <minecraft:blaze_rod>*2);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_hoe>, <liquid:mythril>*((144*3*4)-(16*2*3*4)), <foundry:mold:12>, <minecraft:blaze_rod>*2);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_hoe>, <liquid:onyx_alloy>*((144*3*4)-(16*2*3*4)), <foundry:mold:12>, <minecraft:blaze_rod>*2);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_hoe>, <liquid:soulforged_steel>*((144*2)-(16*2*2)), <foundry:mold:12>, <betterwithmods:material:36>*3);//SFS

// DAGGER //
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:dagger_adamantium>, <liquid:viridium>*(144-(16*2)), <contenttweaker:dagger_mold>, <minecraft:blaze_rod>);//viridium

// LONGSWORD //
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:longsword_mythril>, <liquid:mythril>*((144*5)-(16*2*5)), <contenttweaker:longsword_mold>, <minecraft:blaze_rod>);//mythril

// SABER //
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:saber_adamantium>, <liquid:viridium>*((144*4)-(16*2*4)), <contenttweaker:saber_mold>, <minecraft:blaze_rod>);//viridium

// RAPIER //
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:rapier_mythril>, <liquid:mythril>*((144*5)-(16*2*5)), <contenttweaker:rapier_mold>, <minecraft:blaze_rod>);//mythril

// GREATSWORD //
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_iron>, <liquid:iron>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_gold>, <liquid:gold>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_bronze>, <liquid:bronze>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_silver>, <liquid:silver>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_steel>, <liquid:steel>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:greatsword_onyx>, <liquid:onyx_alloy>*((144*9)-(16*2*9)), <contenttweaker:greatsword_mold>, <minecraft:blaze_rod>*2);//onyx

// WARMALLET //
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_copper>, <liquid:copper>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:hammer_onyx>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <contenttweaker:hammer_mold>, <minecraft:blaze_rod>*4);//onyx

// WARHAMMER //
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:warhammer_onyx>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <contenttweaker:warhammer_mold>, <minecraft:blaze_rod>*2);//onyx

// SPEAR //
mods.foundry.Casting.addRecipe(<spartanweaponry:spear_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:spear_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:spear_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:spear_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:spear_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:spear_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//steel
mods.foundry.Casting.addRecipe(<spartancompat:spear_adamantium>, <liquid:viridium>*((144*2)-(16*2*2)), <contenttweaker:spear_mold>, <minecraft:blaze_rod>*2);//viridium

// HALBERD //
mods.foundry.Casting.addRecipe(<spartanweaponry:halberd_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:halberd_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:halberd_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:halberd_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:halberd_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//steel
mods.foundry.Casting.addRecipe(<spartancompat:halberd_onyx>, <liquid:onyx_alloy>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <minecraft:blaze_rod>*2);//onyx

// PIKE //
mods.foundry.Casting.addRecipe(<spartanweaponry:pike_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:pike_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:pike_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:pike_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:pike_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:pike_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//steel
mods.foundry.Casting.addRecipe(<spartancompat:spear_onyx>, <liquid:onyx_alloy>*((144*2)-(16*2*2)), <contenttweaker:pike_mold>, <minecraft:blaze_rod>*2);//onyx

// LANCE //
mods.foundry.Casting.addRecipe(<spartanweaponry:lance_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:lance_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:lance_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:lance_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:lance_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//steel
mods.foundry.Casting.addRecipe(<spartancompat:lance_mythril>, <liquid:mythril>*((144*3)-(16*2*3)), <contenttweaker:lance_mold>, <minecraft:blaze_rod>*3);//mythril

// THROWING KNIFE //
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_knife_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//iron
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_knife_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//gold
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_knife_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//bronze
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_knife_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//silver
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_knife_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//steel
//mods.foundry.Casting.addRecipe(<spartancompat:throwing_knife_adamantium>, <liquid:viridium>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <minecraft:blaze_rod>);//viridium

// THROWING AXE //
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_axe_copper>, <liquid:copper>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//copper
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_axe_iron>, <liquid:iron>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//iron
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_axe_gold>, <liquid:gold>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//gold
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_axe_bronze>, <liquid:bronze>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//bronze
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_axe_silver>, <liquid:silver>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//silver
//mods.foundry.Casting.addRecipe(<spartanweaponry:throwing_axe_steel>, <liquid:steel>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//steel
//mods.foundry.Casting.addRecipe(<spartancompat:throwing_axe_onyx>, <liquid:onyx_alloy>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <minecraft:blaze_rod>);//onyx

// JAVELIN //
mods.foundry.Casting.addRecipe(<spartanweaponry:javelin_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:javelin_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:javelin_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:javelin_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:javelin_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:javelin_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//steel
mods.foundry.Casting.addRecipe(<spartancompat:javelin_mythril>, <liquid:mythril>*((144*2)-(16*2*2)), <contenttweaker:javelin_mold>, <minecraft:blaze_rod>*2);//mythril

// BOOMERANG //
mods.foundry.Casting.addRecipe(<spartanweaponry:boomerang_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:boomerang_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:boomerang_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:boomerang_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:boomerang_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//steel
mods.foundry.Casting.addRecipe(<spartancompat:boomerang_mythril>, <liquid:mythril>*(144-(16*2)), <contenttweaker:boomerang_mold>, <minecraft:blaze_rod>*4);//mythril

// BATTLEAXE //
mods.foundry.Casting.addRecipe(<spartanweaponry:battleaxe_iron>, <liquid:iron>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:battleaxe_gold>, <liquid:gold>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:battleaxe_bronze>, <liquid:bronze>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:battleaxe_silver>, <liquid:silver>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:battleaxe_steel>, <liquid:steel>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//steel
mods.foundry.Casting.addRecipe(<spartancompat:battleaxe_onyx>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <contenttweaker:battleaxe_mold>, <minecraft:blaze_rod>*2);//onyx

// MACE //
mods.foundry.Casting.addRecipe(<spartanweaponry:mace_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:mace_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:mace_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:mace_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:mace_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//steel
mods.foundry.Casting.addRecipe(<spartancompat:mace_mythril>, <liquid:mythril>*((144*7)-(16*2*7)), <contenttweaker:mace_mold>, <minecraft:blaze_rod>*3);//mythril

// GLAIVE //
mods.foundry.Casting.addRecipe(<spartanweaponry:glaive_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:glaive_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:glaive_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:glaive_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:glaive_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//steel
mods.foundry.Casting.addRecipe(<spartancompat:glaive_mythril>, <liquid:mythril>*((144*4)-(16*2*4)), <contenttweaker:glaive_mold>, <minecraft:blaze_rod>*3);//mythril

// QUARTERSTAFF //
mods.foundry.Casting.addRecipe(<spartanweaponry:staff_iron>, <liquid:iron>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:staff_gold>, <liquid:gold>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:staff_bronze>, <liquid:bronze>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:staff_silver>, <liquid:silver>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:staff_steel>, <liquid:steel>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//steel
mods.foundry.Casting.addRecipe(<spartancompat:staff_adamantium>, <liquid:viridium>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <minecraft:blaze_rod>*2);//viridium

// SHEARS //
mods.foundry.Casting.removeRecipe(<liquid:iron>*288, <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<minecraft:shears>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<simpleores:mythril_shears>, <liquid:mythril>*((144*2)-(16*2*2)), <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<simpleores:adamantium_shears>, <liquid:viridium>*((144*2)-(16*2*2)), <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<simpleores:onyx_shears>, <liquid:onyx_alloy>*((144*2)-(16*2*2)), <foundry:mold:13>);

// PLATES //
mods.foundry.Casting.addRecipe(<minecraft:light_weighted_pressure_plate>, <liquid:gold>*((144*2)-(16*2*2)), <foundry:mold:1>);
mods.foundry.Casting.addRecipe(<minecraft:heavy_weighted_pressure_plate>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:1>);
mods.foundry.Casting.addRecipe(<betterwithmods:steel_pressure_plate>, <liquid:soulforged_steel>*((144*4)-(16*2*4)), <foundry:mold:1>, <minecraft:redstone>*2);

//Missing Block Casting Recipes
//addBlockRecipe(IItemStack output, ILiquidStack input)
mods.foundry.CastingTable.addBlockRecipe(<simpleores:adamantium_block>, <liquid:viridium>*1296);
mods.foundry.CastingTable.addBlockRecipe(<simpleores:mythril_block>, <liquid:mythril>*1296);
mods.foundry.CastingTable.addBlockRecipe(<simpleores:onyx_block>, <liquid:onyx_alloy>*1296);
mods.foundry.CastingTable.addBlockRecipe(<contenttweaker:block_electrum>, <liquid:electrum>*1296);
mods.foundry.CastingTable.addBlockRecipe(<betterwithmods:steel_block>, <liquid:soulforged_steel>*(144*16));
mods.foundry.CastingTable.addBlockRecipe(<minecraft:stone>, <liquid:coade_stone>*576);
mods.foundry.CastingTable.addBlockRecipe(<endreborn:block_end_stone_smooth>, <liquid:ender_slag>*1000);

//Missing Ingot Casting Recipes
//addIngotRecipe(IItemStack output, ILiquidStack input)
mods.foundry.CastingTable.addIngotRecipe(<simpleores:adamantium_ingot>, <liquid:viridium>*144);
mods.foundry.CastingTable.addIngotRecipe(<simpleores:mythril_ingot>, <liquid:mythril>*144);
mods.foundry.CastingTable.addIngotRecipe(<contenttweaker:material_part:12>, <liquid:electrum>*144);
mods.foundry.CastingTable.addIngotRecipe(<betterwithmods:material:14>, <liquid:soulforged_steel>*144);
mods.foundry.CastingTable.addIngotRecipe(<pyrotech:material:16>, <liquid:coade_stone>*144);
mods.foundry.CastingTable.addIngotRecipe(<betterwithmods:material:39>, <liquid:ender_slag>*250);