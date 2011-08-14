package com.beacon.flex.events
{
	import com.beacon.flex.ZoneSelectionDialog;
	
	import flash.events.Event;

	public class ZoneSelectedEvent extends Event
	{
		public static const OPEN:String = "Open Zone";
		public static const CANCEL:String = "Cancel Zone Open";
		
		public var zoneName:String;
		public var zoneId:int;
		
		public var dialog:ZoneSelectionDialog;		
		
		public function ZoneSelectedEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}