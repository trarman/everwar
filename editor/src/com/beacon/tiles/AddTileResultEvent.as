/**
 * AddTileResultEvent.as
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
    
	public class AddTileResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var AddTile_RESULT:String="AddTile_result";
		/**
		 * Constructor for the new event type
		 */
		public function AddTileResultEvent()
		{
			super(AddTile_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:AddTileResponse;
		public function get result():AddTileResponse
		{
			return _result;
		}

		public function set result(value:AddTileResponse):void
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