package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	public class JeanFrancois extends FlxSprite 
	{
		[Embed(source = '../assets/gfx/avatar.png')] protected var ImgAvatar:Class;
		private const GRAVITY:int = 300;
		private var jumpHeight:int = 100;
		
		public function JeanFrancois() 
		{
			super(0, 0, ImgAvatar);
			this.loadGraphic(ImgAvatar, true, true, 36, 49);
			this.addAnimation("walk", [0, 1, 2, 3, 4, 5, 6, 7], 25, true);
			this.addAnimation("idle", [7], 0, false);
			this.play("idle");
			this.acceleration.y = GRAVITY;
		}
		
	}

}