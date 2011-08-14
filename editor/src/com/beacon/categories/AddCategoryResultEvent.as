/**
 * AddCategoryResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package com.beacon.categories
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class AddCategoryResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var AddCategory_RESULT:String="AddCategory_result";
		/**
		 * Constructor for the new event type
		 */
		public function AddCategoryResultEvent()
		{
			super(AddCategory_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:AddCategoryResponse;
		public function get result():AddCategoryResponse
		{
			return _result;
		}

		public function set result(value:AddCategoryResponse):void
		{
			_result = value;
		}

		public function get headers():Object
		{
			return _headers;
		}

		public function set headers(value:Object):void
		{
			_headers = value;
		}
	}
}