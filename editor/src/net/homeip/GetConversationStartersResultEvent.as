/**
 * GetConversationStartersResultEvent.as
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
    
	public class GetConversationStartersResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetConversationStarters_RESULT:String="GetConversationStarters_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetConversationStartersResultEvent()
		{
			super(GetConversationStarters_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:GetConversationStartersResponse;
		public function get result():GetConversationStartersResponse
		{
			return _result;
		}

		public function set result(value:GetConversationStartersResponse):void
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