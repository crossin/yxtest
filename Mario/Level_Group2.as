//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Group2 extends BaseLevel
	{
		//Embedded media...

		//Sprites
		public var Layer1Group:FlxGroup = new FlxGroup;

		//Properties


		public function Level_Group2(addToStage:Boolean = true, onAddCallback:Function = null, parentObject:Object = null)
		{
			// Generate maps.
			var properties:Array = [];
			var tileProperties:Dictionary = new Dictionary;


			//Add layers to the master group in correct order.
			masterLayer.add(Layer1Group);

			if ( addToStage )
				createObjects(onAddCallback, parentObject);

			boundsMinX = 9999999;
			boundsMinY = 9999999;
			boundsMaxX = -9999999;
			boundsMaxY = -9999999;
			boundsMin = new FlxPoint(9999999, 9999999);
			boundsMax = new FlxPoint(-9999999, -9999999);
			bgColor = 0xff000000;
		}

		override public function createObjects(onAddCallback:Function = null, parentObject:Object = null):void
		{
			addSpritesForLayerLayer1(onAddCallback);
			generateObjectLinks(onAddCallback);
			if ( parentObject != null )
				parentObject.add(masterLayer);
			else
				FlxG.state.add(masterLayer);
		}

		public function addSpritesForLayerLayer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Crate, Layer1Group , 156.000, 175.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"xx"
			addSpriteToLayer(null, Crate, Layer1Group , 198.000, 175.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"xx"
			addSpriteToLayer(null, Crate, Layer1Group , 237.000, 175.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"xx"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
		}

	}
}
