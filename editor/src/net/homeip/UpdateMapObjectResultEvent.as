/**
 * UpdateMapObjectResultEvent.as
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
    
	public class UpdateMapObjectResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var UpdateMapObject_RESULT:String="UpdateMapObject_result";
		/**
		 * Constructor for the new event type
		 */
		public function UpdateMapObjectResultEvent()
		{
			super(UpdateMapObject_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:UpdateMapObjectResponse;
		public function get result():UpdateMapObjectResponse
		{
			return _result;
		}

		public function set result(value:UpdateMapObjectResponse):void
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