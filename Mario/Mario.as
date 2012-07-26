package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class Mario extends FlxGame
	{
		public function Mario()
		{
			super(320,240,PlayState,2);
			//FlxState.bgColor = 0xff233e58;
		}
	}
}
