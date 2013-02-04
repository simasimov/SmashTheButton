package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import org.flixel.FlxGame;
	
	[SWF(width = "600", height = "400", backgroundColor = "#ffffff")]
	 [Frame(factoryClass="Preloader")]
	/**
	 * ...
	 * @author ...
	 */
	[Frame(factoryClass="Preloader")]
	public class Main extends FlxGame
	{

		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			//Function to call to create the game at a specified screen size and display the first state (MenuState)
			super(600, 400, MenuState);
		}

		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
		}

	}

}