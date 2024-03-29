package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		[Embed(source="data/map.png")] private var ImgMap:Class;
		[Embed(source="data/tiles.png")] private var ImgTiles:Class;
		[Embed(source="data/bg.png")] private var ImgBG:Class;
		[Embed(source="data/gibs.png")] private var ImgGibs:Class;
		
		protected var _fps:FlxText;
		
		protected var _player:FlxSprite;
		protected var _elevator:FlxSprite;
		protected var focus:FlxSprite;
		
		protected var level1:BaseLevel; 
		
		override public function create():void
		{
			//Background
			//FlxState.bgColor = 0xffacbcd7;
			var decoration:FlxSprite = new FlxSprite(256,159,ImgBG);
			decoration.moves = false;
			decoration.solid = false;
			add(decoration);
			add(new FlxText(32,36,96,"collision").setFormat(null,16,0x778ea1,"center"));
			add(new FlxText(32,60,96,"DEMO").setFormat(null,24,0x778ea1,"center"));
			
			//Add game objects
			_player = new Player(32, 176);
			_elevator = new Elevator(208, 80, 112);
			add(_elevator);
			add(new Pusher(96,208,56));
			add(_player);
			add(new Crate(64,208));
			add(new Crate(108,176));
			add(new Crate(140,176));
			add(new Crate(192,208));
			add(new Crate(272,48));
			
			//This is the thing that spews nuts and bolts
			//var dispenser:FlxEmitter = new FlxEmitter(32,32);
			//dispenser.setSize(8,24);
			//dispenser.setXSpeed(100,400);
			//dispenser.setYSpeed(-50,50);
			//dispenser.createSprites(ImgGibs,120,16,true,0.8);
			//dispenser.start(false,0.035);
			//add(dispenser);
			
			//Basic level structure
			//var t:FlxTilemap = new FlxTilemap();
			//t.auto = FlxTilemap.ALT;
			//t.loadMap(FlxTilemap.imageToCSV(ImgMap,false,2),ImgTiles);
			//t.follow();
			//add(t);
			
			level1 = new Level_Group1(true,onObjectAddedCallback);
			
			focus = new FlxSprite(100, 80);
			//focus.visible = false;
			add(focus);
			
			FlxG.camera.follow(focus, 50);
			FlxG.camera.bounds = new FlxRect(0, 10, 1640, 480);
			
			//Instructions and stuff
			_fps = new FlxText(FlxG.width-40,0,40).setFormat(null,8,0x778ea1,"right",0x233e58);
			_fps.scrollFactor.x = _fps.scrollFactor.y = 0;
			add(_fps);
			var tx:FlxText;
			tx = new FlxText(2,0,FlxG.width,"flixel v2.0");
			tx.scrollFactor.x = tx.scrollFactor.y = 0;
			tx.color = 0x778ea1;
			tx.shadow = 0x233e58;
			add(tx);
			tx = new FlxText(2,FlxG.height-12,FlxG.width,"Interact with ARROWS + SPACE, or press ENTER for next demo.");
			tx.scrollFactor.x = tx.scrollFactor.y = 0;
			tx.color = 0x778ea1;
			tx.shadow = 0x233e58;
			add(tx);
			
			FlxG.bgColor = 0xff233e58;
			
		}
		
		override public function update():void
		{
			_fps.text = FlxU.floor(1 / FlxG.elapsed) + " fps";
			
			
			if (_player.x > focus.x && _player.velocity.x > 0)
			{
				focus.velocity.x = _player.velocity.x;
			}else {
				focus.velocity.x = 0;
			}
			
			
			
			super.update();
			FlxG.collide();
			//FlxU.collide(_player,level1.masterLayer);
			
			//FlxU.overlap(_elevator,_player,overlapped);
			//if(FlxG.keys.justReleased("ENTER"))
				//FlxG.state = new PlayState2();
		}
		
		protected function overlapped(Object1:FlxObject,Object2:FlxObject):void
		{
			trace("hit");
		}
		
		protected function onObjectAddedCallback(obj:Object, layer:FlxGroup, level:BaseLevel, scrollX:Number, scrollY:Number, properties:Array):Object
		{
			trace(obj);
			trace(layer);
			trace("=================");
			return obj;
		}
	}
}
