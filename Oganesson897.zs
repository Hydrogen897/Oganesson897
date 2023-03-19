#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import crafttweaker.world.IExplosion;

var og as ItemFood = VanillaFactory.createItemFood("oganesson897", 10);

og.saturation = 8;
og.alwaysEdible = true;
og.rarity = "RARE";
og.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        world.performExplosion(player, player.x, player.y, player.z, 200.0, false, false);
    }
};
og.register();

//配方：
// TNT TNT TNT
// TNT 土豆 TNT
// TNT TNT TNT
