package com.beacon.rpg.events
{
	import flash.events.Event;

	public class CharacterEvent extends Event
	{
		public static const DELETE:String = "Delete this character";
		
		public var characterId:Number;
		
		public function CharacterEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}