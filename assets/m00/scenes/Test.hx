
package assets.m00.scenes;

import input.KeyboardKeys;

class Test extends engine.m00.GameScene
{

    override function init()
    {
        super.init();

        var tile = hxd.Res.hxlogo.toTile();
        tile = tile.center();

        for( i in 0...10 ) {
            var bmp = new h2d.Bitmap(tile, apiObject);

            bmp.x = Math.cos(i * Math.PI / 8) * 32 + 32;
            bmp.y = Math.sin(i * Math.PI / 8) * 32 + 32;
            bmp.scaleX = .1;
            bmp.scaleY = .1;
        }

        engine.input
            .registerInput(KeyboardKeys.RIGHT,'r')
            .registerInput(KeyboardKeys.LEFT,'l')
        ;

        engine.input                    
            .registerFunctionOnKeyDown('r', function()
                {
                    apiObject.x += 5;
                })             
            .registerFunctionOnKeyDown('l', function()
                {
                    apiObject.x -= 5;
                })        
        ;
    }

}