package com.beacon.flex.events
{
	import com.beacon.flex.CreateZoneDialog;
	
	import flash.events.Event;

	public class CreateZoneEvent extends Event
	{
		public static const CREATE:String = "Create Zone";
		public static const CANCEL:String = "Cancel Zone Create";
		
		public var zoneName:String;
		public var zoneWidth:int;
		public var zoneHeight:int;
		
		public var dialog:CreateZoneDialog;		
		
		public function CreateZoneEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}