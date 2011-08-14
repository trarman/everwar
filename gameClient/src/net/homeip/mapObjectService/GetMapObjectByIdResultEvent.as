/**
 * GetMapObjectByIdResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package net.homeip.mapObjectService
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetMapObjectByIdResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetMapObjectById_RESULT:String="GetMapObjectById_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetMapObjectByIdResultEvent()
		{
			super(GetMapObjectById_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:GetMapObjectByIdResponse;
		public function get result():GetMapObjectByIdResponse
		{
			return _result;
		}

		public function set result(value:GetMapObjectByIdResponse):void
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