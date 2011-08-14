package com.beacon.flex.events
{
	import com.beacon.flex.MoveTileDialog;
	import com.beacon.tiles.Tile;
	
	import flash.events.Event;

	public class MoveTileEvent extends Event
	{
		public static const CANCEL:String = "Cancel Tile Move";
		public static const MOVE:String = "Move Tile";
		
		public var tile:Tile;
		public var categoryId:int;
		public var categoryName:String;
		
		public var dialog:MoveTileDialog;
		
		public function MoveTileEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}