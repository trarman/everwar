package com.beacon.rpg
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	
	import mx.controls.Image;
	
	import net.homeip.NpcCharacter;
	
	public class CombatOpponent
	{
		private var npc:NpcCharacter = null;
		private var bmp:Bitmap = null;
		
		public function CombatOpponent()
		{
		}

		public function isNPC():Boolean {
			return (npc!=null);
		}
		
		public function getNPC():NpcCharacter {
			return npc;
		}
		
		public function setNPC(npc:NpcCharacter):void {
			this.npc = npc;
		}
		
		public function setImage(image:Image):void {
			//var data:BitmapData = Bitmap(image.content).bitmapData;
			var data:BitmapData = new BitmapData(image.width,image.height);
		    var matrix:Matrix = new Matrix();
		    data.draw(image,matrix)
		    bmp = new Bitmap(data);
		}
		
		public function getBitmap():Bitmap {
			return bmp;
		}
	}
}