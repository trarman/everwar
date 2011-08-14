package com.beacon.flex.events
{
	import com.beacon.flex.AddTileDialog;
	
	import flash.events.Event;
	import flash.utils.ByteArray;

	public class AddTileEvent extends Event
	{
		public static const ADD:String = "Add Tile";
		public static const CANCEL:String = "Cancel Add Tile";
		
		public var categoryId:int;
		public var name:String;
		public var imageData:ByteArray;
		
		public var dialog:AddTileDialog;
		
		public function AddTileEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}