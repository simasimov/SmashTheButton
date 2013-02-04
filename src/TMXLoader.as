package  
{
	import net.pixelpracht.tmx.*;
	
	public class TMXLoader 
	{
		
		// Tilemap
		private var loader:URLLoader;
		private var tmx:TmxMap;
		private var tilemap:FlxTilemap;
		
		public function TMXLoader() 
		{
			
			// Tilemap
			// -> Chargement et lecture du fichier tmx
			this.loader = new URLLoader();
			this.loader.addEventListener(Event.COMPLETE, onTmxLoaded);
			this.loader.load(new URLRequest('../lvl1.tmx'));
		}
		
		private function onTmxLoaded(e:Event):void
		{
			var xml:XML = new XML(e.target.data);
			this.tmx = new TmxMap(xml);
			
			this.tilemap = new FlxTilemap();
			var csv:String = this.tmx.getLayer('Platformer').toCsv(this.tmx.getTileSet('brick'));
			this.tilemap.loadMap(csv,decorTileset,64,64);
			this.add(this.tilemap);
		}
		
	}

}