#loader contenttweaker
#priority 950

import mods.contenttweaker.item.ItemBuilder;

for i in InterfacePartList.PARTLIST{
        var regname as string= "t_"+i;
        new ItemBuilder()
            .withItemGroup(<itemGroup:${CreativeTabs.TAB_DEBUG}>)
            .build(regname);
    
}