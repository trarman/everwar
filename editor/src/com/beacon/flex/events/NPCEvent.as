package com.beacon.flex.events
{
	import flash.events.Event;
	
	import net.homeip.NpcCharacter;

	public class NPCEvent extends Event
	{
		public static const ADD:String = "Add NPC";
		public static const EDIT:String = "Edit NPC";
		public static const UPDATE:String = "Update NPC";
		
		public var npc:NpcCharacter;

		public function NPCEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}