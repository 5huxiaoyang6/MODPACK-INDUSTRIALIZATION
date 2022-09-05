#loader contenttweaker
#priority 2000

import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.INumberData;
import crafttweaker.api.data.StringData;
import mods.contenttweaker.BracketHandlers;
import crafttweaker.api.item.ItemGroup;
import crafttweaker.api.BracketHandlers;

public class Material{
    //内置属性
    public var MATERIAL as string;
    public var HEXCOLOR as int;
    public var TAB as string = CreativeTabs.TAB_DEBUG;


    //setter 有PUBLIC的才可以被外部访问
    public setColor(c as int) as void{
        this.HEXCOLOR = c;
    }
    public setMaterial(m as string)as void{
        this.MATERIAL = m;
    }

    //getter
    public getColor() as int{
        return this.HEXCOLOR;
    }
    public getMatrial() as string{
        return this.MATERIAL;
    }
    //方法
    public build() as void {
        var regname = "material_"+this.MATERIAL;
        new ItemBuilder()
            .withItemGroup(<itemGroup:${this.TAB}>)
            .withType<ItemBuilderAdvanced>()
            .build(regname);
    }



    //构造函数
    public this(MATERIAL as string,c as int){
        this.setMaterial(MATERIAL);
        this.setColor(c);
    }
}

