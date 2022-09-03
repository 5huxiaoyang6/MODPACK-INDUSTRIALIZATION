#loader contenttweaker
#priority 2000


import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.INumberData;
import crafttweaker.api.data.StringData;
import mods.contenttweaker.BracketHandlers;
import crafttweaker.api.item.ItemGroup;
import crafttweaker.api.BracketHandlers;

public expand string{
    public implicit as IItemStack =>
        BracketHandlers.getItem(this);

    public implicit as int{
        var temp =  new StringData(this) as StringData;
        var temp2 as INumberData = temp.asNumber();
        var temp3 as int = temp2.getInt();
        return temp3;
    }

    public implicit as float{
        var temp = new StringData(this) as StringData;
        var t2 as INumberData = temp.asNumber();
        var t3 as float = t2.getFloat();
        return t3;
    }

    public implicit as double{
        var temp = new StringData(this) as StringData;
        var t2 as INumberData = temp.asNumber();
        var t3 as double = t2.getDouble();
        return t3;
    }
}