package
{
	import org.flixel.FlxState;
	import org.flixel.FlxText;
	import org.flixel.FlxG;
	
	/**
	 * Menu state
	 * @author 
	 */
	public class MenuState extends FlxState
	{
		
		
		
		override public function create():void
		{
			FlxG.bgColor = 0xaaffffff;
			
			var title:FlxText = new FlxText(FlxG.width / 2 - 50, FlxG.height / 2 - 200, 100, "Welcome");
			title.setFormat("", 16, 0x123fff);
			add(title);

			var instruction:FlxText = new FlxText(FlxG.width / 2 - 100, FlxG.height / 2 + 100, 200, "Press SPACE to continue.");
			instruction.setFormat("", 12, 0x123fff);
			add(instruction);
		}
		
		/**
		 * Update the state
		 */
		override public function update():void
		{
			super.update();
			
			if (FlxG.keys.pressed("SPACE")) {
				FlxG.switchState(new PlayState());
			}
		}
	}
}
