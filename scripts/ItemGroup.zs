#loader contenttweaker
#priority 1000


import mods.contenttweaker.functions.IIconSupplier;
import crafttweaker.api.item.ItemGroup;




public class CreativeTabs{
    public static var TAB_GENERAL = "industrialization_general";
}

ItemGroup.create(CreativeTabs.TAB_GENERAL,()=><item:minecraft:apple>);
