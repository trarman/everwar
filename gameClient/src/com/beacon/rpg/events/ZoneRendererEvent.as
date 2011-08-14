package com.beacon.rpg.events
{
	import flash.events.Event;

	public class ZoneRendererEvent extends Event
	{
		public static const READY_FOR_OBJECTS:String = "Ready to load map objects";
		public static const READY_FOR_TILES:String = "Ready to load tile images";
		public static const RENDERED:String = "Done Rendering";
		
		public function ZoneRendererEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}