package com.beacon.flex.events
{
	import com.beacon.flex.AddCategoryDialog;
	
	import flash.events.Event;

	public class AddCategoryEvent extends Event
	{
		public static const OK:String = "Add Category OK";
		public static const CANCEL:String = "Add Category Cancel";
		
		public var categoryName:String;
		public var parentId:int;
		
		public var dialog:AddCategoryDialog;
		
		public function AddCategoryEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}