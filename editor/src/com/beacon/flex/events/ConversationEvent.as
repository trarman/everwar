package com.beacon.flex.events
{
	import com.beacon.flex.ConversationNode;
	
	import flash.events.Event;
	
	import mx.collections.IList;

	public class ConversationEvent extends Event
	{
		public static const SAVE:String = "Save this conversation";
		
		//public var conversation:IList;
		public var rootNode:ConversationNode;
		
		public function ConversationEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}