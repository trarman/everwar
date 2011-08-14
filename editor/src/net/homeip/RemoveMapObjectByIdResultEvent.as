/**
 * RemoveMapObjectByIdResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package net.homeip
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class RemoveMapObjectByIdResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var RemoveMapObjectById_RESULT:String="RemoveMapObjectById_result";
		/**
		 * Constructor for the new event type
		 */
		public function RemoveMapObjectByIdResultEvent()
		{
			super(RemoveMapObjectById_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:RemoveMapObjectByIdResponse;
		public function get result():RemoveMapObjectByIdResponse
		{
			return _result;
		}

		public function set result(value:RemoveMapObjectByIdResponse):void
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