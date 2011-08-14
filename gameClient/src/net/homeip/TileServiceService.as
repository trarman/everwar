/**
 * TileServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:TileServiceService= new TileServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetTileByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getTileById(mytileId,mygetTileById);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:TileServiceService id="myService">
  *   <srv:getTileById_request_var>
  *		<srv:GetTileById_request tileId=myValue,getTileById=myValue/>
  *   </srv:getTileById_request_var>
  * </srv:TileServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getTileById_send()" />
  */
package net.homeip
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getTileById completes with success
     * and returns some data
     * @eventType GetTileByIdResultEvent
     */
    [Event(name="GetTileById_result", type="net.homeip.GetTileByIdResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class TileServiceService extends EventDispatcher implements ITileServiceService
	{
    	private var _baseService:BaseTileServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function TileServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseTileServiceService(destination,rootURL);
        }
        
		//stub functions for the getTileById operation
          

        /**
         * @see ITileServiceService#getTileById()
         */
        public function getTileById(getTileById:GetTileById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getTileById(getTileById);
            _internal_token.addEventListener("result",_getTileById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITileServiceService#getTileById_send()
		 */    
        public function getTileById_send():AsyncToken
        {
        	return getTileById(_getTileById_request.getTileById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getTileById_request:GetTileById_request;
		/**
		 * @see ITileServiceService#getTileById_request_var
		 */
		[Bindable]
		public function get getTileById_request_var():GetTileById_request
		{
			return _getTileById_request;
		}
		
		/**
		 * @private
		 */
		public function set getTileById_request_var(request:GetTileById_request):void
		{
			_getTileById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getTileById_lastResult:GetTileByIdResponse;
		[Bindable]
		/**
		 * @see ITileServiceService#getTileById_lastResult
		 */	  
		public function get getTileById_lastResult():GetTileByIdResponse
		{
			return _getTileById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getTileById_lastResult(lastResult:GetTileByIdResponse):void
		{
			_getTileById_lastResult = lastResult;
		}
		
		/**
		 * @see ITileServiceService#addgetTileById()
		 */
		public function addgetTileByIdEventListener(listener:Function):void
		{
			addEventListener(GetTileByIdResultEvent.GetTileById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getTileById_populate_results(event:ResultEvent):void
		{
			var e:GetTileByIdResultEvent = new GetTileByIdResultEvent();
		            e.result = event.result as GetTileByIdResponse;
		                       e.headers = event.headers;
		             getTileById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see ITileServiceService#getWebService()
		 */
		public function getWebService():BaseTileServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addTileServiceServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
