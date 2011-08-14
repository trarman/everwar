package com.beacon.rpg
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	public class BaseObject
	{
	
		public var owner:String;	
		public var visible:Boolean=false;
		public var bitmapData:BitmapData;
		public var x:int;
		public var y:int;
		public var z:int;
		public var moid:Number = -1;

		public function BaseObject()
		{
		}

		public function loadBytes(bytes:ByteArray):void
		{
  			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, bytesLoadedHandler);
  			loader.loadBytes(bytes);			
		}
		
		private function bytesLoadedHandler(event:Event):void
		{
			bitmapData = Bitmap(event.currentTarget.content).bitmapData;			
		}
	}
}