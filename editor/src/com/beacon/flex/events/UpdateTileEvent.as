package com.beacon.flex.events
{
	import com.beacon.flex.UpdateTileDialog;
	
	import flash.events.Event;
	import flash.utils.ByteArray;

	public class UpdateTileEvent extends Event
	{
		public static const UPDATE:String = "Update Tile";
		public static const CANCEL:String = "Cancel Update Tile";

		public var tileId:int;		
		public var categoryId:int;
		public var name:String;
		public var imageData:ByteArray;
		
		public var dialog:UpdateTileDialog;
		
		public function UpdateTileEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}