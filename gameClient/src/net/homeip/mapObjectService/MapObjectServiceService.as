/**
 * MapObjectServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:MapObjectServiceService= new MapObjectServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetMapObjectByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getMapObjectById(mygetMapObjectById,myid);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.mapObjectService.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:MapObjectServiceService id="myService">
  *   <srv:getMapObjectById_request_var>
  *		<srv:GetMapObjectById_request getMapObjectById=myValue,id=myValue/>
  *   </srv:getMapObjectById_request_var>
  * </srv:MapObjectServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getMapObjectById_send()" />
  */
package net.homeip.mapObjectService
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getMapObjectById completes with success
     * and returns some data
     * @eventType GetMapObjectByIdResultEvent
     */
    [Event(name="GetMapObjectById_result", type="net.homeip.mapObjectService.GetMapObjectByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getMapObjectsForZoneId completes with success
     * and returns some data
     * @eventType GetMapObjectsForZoneIdResultEvent
     */
    [Event(name="GetMapObjectsForZoneId_result", type="net.homeip.mapObjectService.GetMapObjectsForZoneIdResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class MapObjectServiceService extends EventDispatcher implements IMapObjectServiceService
	{
    	private var _baseService:BaseMapObjectServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function MapObjectServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseMapObjectServiceService(destination,rootURL);
        }
        
		//stub functions for the getMapObjectById operation
          

        /**
         * @see IMapObjectServiceService#getMapObjectById()
         */
        public function getMapObjectById(getMapObjectById:GetMapObjectById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getMapObjectById(getMapObjectById);
            _internal_token.addEventListener("result",_getMapObjectById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMapObjectServiceService#getMapObjectById_send()
		 */    
        public function getMapObjectById_send():AsyncToken
        {
        	return getMapObjectById(_getMapObjectById_request.getMapObjectById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getMapObjectById_request:GetMapObjectById_request;
		/**
		 * @see IMapObjectServiceService#getMapObjectById_request_var
		 */
		[Bindable]
		public function get getMapObjectById_request_var():GetMapObjectById_request
		{
			return _getMapObjectById_request;
		}
		
		/**
		 * @private
		 */
		public function set getMapObjectById_request_var(request:GetMapObjectById_request):void
		{
			_getMapObjectById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getMapObjectById_lastResult:GetMapObjectByIdResponse;
		[Bindable]
		/**
		 * @see IMapObjectServiceService#getMapObjectById_lastResult
		 */	  
		public function get getMapObjectById_lastResult():GetMapObjectByIdResponse
		{
			return _getMapObjectById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getMapObjectById_lastResult(lastResult:GetMapObjectByIdResponse):void
		{
			_getMapObjectById_lastResult = lastResult;
		}
		
		/**
		 * @see IMapObjectServiceService#addgetMapObjectById()
		 */
		public function addgetMapObjectByIdEventListener(listener:Function):void
		{
			addEventListener(GetMapObjectByIdResultEvent.GetMapObjectById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getMapObjectById_populate_results(event:ResultEvent):void
		{
			var e:GetMapObjectByIdResultEvent = new GetMapObjectByIdResultEvent();
		            e.result = event.result as GetMapObjectByIdResponse;
		                       e.headers = event.headers;
		             getMapObjectById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getMapObjectsForZoneId operation
          

        /**
         * @see IMapObjectServiceService#getMapObjectsForZoneId()
         */
        public function getMapObjectsForZoneId(getMapObjectsForZoneId:GetMapObjectsForZoneId):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getMapObjectsForZoneId(getMapObjectsForZoneId);
            _internal_token.addEventListener("result",_getMapObjectsForZoneId_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMapObjectServiceService#getMapObjectsForZoneId_send()
		 */    
        public function getMapObjectsForZoneId_send():AsyncToken
        {
        	return getMapObjectsForZoneId(_getMapObjectsForZoneId_request.getMapObjectsForZoneId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getMapObjectsForZoneId_request:GetMapObjectsForZoneId_request;
		/**
		 * @see IMapObjectServiceService#getMapObjectsForZoneId_request_var
		 */
		[Bindable]
		public function get getMapObjectsForZoneId_request_var():GetMapObjectsForZoneId_request
		{
			return _getMapObjectsForZoneId_request;
		}
		
		/**
		 * @private
		 */
		public function set getMapObjectsForZoneId_request_var(request:GetMapObjectsForZoneId_request):void
		{
			_getMapObjectsForZoneId_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getMapObjectsForZoneId_lastResult:GetMapObjectsForZoneIdResponse;
		[Bindable]
		/**
		 * @see IMapObjectServiceService#getMapObjectsForZoneId_lastResult
		 */	  
		public function get getMapObjectsForZoneId_lastResult():GetMapObjectsForZoneIdResponse
		{
			return _getMapObjectsForZoneId_lastResult;
		}
		/**
		 * @private
		 */
		public function set getMapObjectsForZoneId_lastResult(lastResult:GetMapObjectsForZoneIdResponse):void
		{
			_getMapObjectsForZoneId_lastResult = lastResult;
		}
		
		/**
		 * @see IMapObjectServiceService#addgetMapObjectsForZoneId()
		 */
		public function addgetMapObjectsForZoneIdEventListener(listener:Function):void
		{
			addEventListener(GetMapObjectsForZoneIdResultEvent.GetMapObjectsForZoneId_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getMapObjectsForZoneId_populate_results(event:ResultEvent):void
		{
			var e:GetMapObjectsForZoneIdResultEvent = new GetMapObjectsForZoneIdResultEvent();
		            e.result = event.result as GetMapObjectsForZoneIdResponse;
		                       e.headers = event.headers;
		             getMapObjectsForZoneId_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IMapObjectServiceService#getWebService()
		 */
		public function getWebService():BaseMapObjectServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addMapObjectServiceServiceFaultEventListener(listener:Function):void
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
