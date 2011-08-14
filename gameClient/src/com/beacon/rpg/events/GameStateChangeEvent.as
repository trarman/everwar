package com.beacon.rpg.events
{
	import flash.events.Event;

	public class GameStateChangeEvent extends Event
	{
		public static const TO_STATE_INGAME:String = "Changed state to InGame";
		public static const TO_STATE_CHARACTERSELECTION:String = "Changed state to CharacterSelection";
		
		public var character:CharacterListItem;
		
		public function GameStateChangeEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}