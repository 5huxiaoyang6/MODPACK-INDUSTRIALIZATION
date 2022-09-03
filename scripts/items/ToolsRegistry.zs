#loader contenttweaker
#priority 900

import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import crafttweaker.api.data.StringData;
import crafttweaker.api.data.INumberData;


var I = MaterialTool.MaterialToolList;

for material in I{
    //材料层
    var temp as string[][] = material;
    for ty in temp[6]{
        new ItemBuilder()
            .withItemGroup(<itemGroup:${CreativeTabs.TAB_GENERAL}>)
            .withMaxDamage(temp[1][0])
            .withType<ItemBuilderTool>()
            .withAttackDamage(temp[2][0])
            .withAttackSpeed(temp[3][0])
            .withDurabilityCostAttack(temp[4][0])
            .withDurabilityCostMining(temp[5][0])
            .withToolType(<tooltype:${ty}>,temp[7][0],temp[8][0])
            .build(temp[0][0]+"_"+ty);
    }
}
