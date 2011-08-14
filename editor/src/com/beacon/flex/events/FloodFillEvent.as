package com.beacon.flex.events
{
	import com.beacon.flex.renderers.ZoneGridItem;
	
	import flash.events.Event;

	public class FloodFillEvent extends Event
	{
		public static const FILL:String = "Flood Fill";
		
		public var origin:ZoneGridItem;
		public var replaceTileId:Number;

		public function FloodFillEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}