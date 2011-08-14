/**
 * GetTileByIdResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package com.beacon.tiles
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetTileByIdResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetTileById_RESULT:String="GetTileById_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetTileByIdResultEvent()
		{
			super(GetTileById_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:GetTileByIdResponse;
		public function get result():GetTileByIdResponse
		{
			return _result;
		}

		public function set result(value:GetTileByIdResponse):void
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