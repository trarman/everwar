/**
 * ZoneMapServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:ZoneMapServiceService= new ZoneMapServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetZoneMapByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getZoneMapById(mygetZoneMapById,myid);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.beacon.maps.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ZoneMapServiceService id="myService">
  *   <srv:getZoneMapById_request_var>
  *		<srv:GetZoneMapById_request getZoneMapById=myValue,id=myValue/>
  *   </srv:getZoneMapById_request_var>
  * </srv:ZoneMapServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getZoneMapById_send()" />
  */
package com.beacon.maps
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getZoneMapById completes with success
     * and returns some data
     * @eventType GetZoneMapByIdResultEvent
     */
    [Event(name="GetZoneMapById_result", type="com.beacon.maps.GetZoneMapByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getZones completes with success
     * and returns some data
     * @eventType GetZonesResultEvent
     */
    [Event(name="GetZones_result", type="com.beacon.maps.GetZonesResultEvent")]
    
    /**
     * Dispatches when a call to the operation addZoneMap completes with success
     * and returns some data
     * @eventType AddZoneMapResultEvent
     */
    [Event(name="AddZoneMap_result", type="com.beacon.maps.AddZoneMapResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateZoneMapById completes with success
     * and returns some data
     * @eventType UpdateZoneMapByIdResultEvent
     */
    [Event(name="UpdateZoneMapById_result", type="com.beacon.maps.UpdateZoneMapByIdResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class ZoneMapServiceService extends EventDispatcher implements IZoneMapServiceService
	{
    	private var _baseService:BaseZoneMapServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function ZoneMapServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseZoneMapServiceService(destination,rootURL);
        }
        
		//stub functions for the getZoneMapById operation
          

        /**
         * @see IZoneMapServiceService#getZoneMapById()
         */
        public function getZoneMapById(getZoneMapById:GetZoneMapById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getZoneMapById(getZoneMapById);
            _internal_token.addEventListener("result",_getZoneMapById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IZoneMapServiceService#getZoneMapById_send()
		 */    
        public function getZoneMapById_send():AsyncToken
        {
        	return getZoneMapById(_getZoneMapById_request.getZoneMapById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getZoneMapById_request:GetZoneMapById_request;
		/**
		 * @see IZoneMapServiceService#getZoneMapById_request_var
		 */
		[Bindable]
		public function get getZoneMapById_request_var():GetZoneMapById_request
		{
			return _getZoneMapById_request;
		}
		
		/**
		 * @private
		 */
		public function set getZoneMapById_request_var(request:GetZoneMapById_request):void
		{
			_getZoneMapById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getZoneMapById_lastResult:GetZoneMapByIdResponse;
		[Bindable]
		/**
		 * @see IZoneMapServiceService#getZoneMapById_lastResult
		 */	  
		public function get getZoneMapById_lastResult():GetZoneMapByIdResponse
		{
			return _getZoneMapById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getZoneMapById_lastResult(lastResult:GetZoneMapByIdResponse):void
		{
			_getZoneMapById_lastResult = lastResult;
		}
		
		/**
		 * @see IZoneMapServiceService#addgetZoneMapById()
		 */
		public function addgetZoneMapByIdEventListener(listener:Function):void
		{
			addEventListener(GetZoneMapByIdResultEvent.GetZoneMapById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getZoneMapById_populate_results(event:ResultEvent):void
		{
			var e:GetZoneMapByIdResultEvent = new GetZoneMapByIdResultEvent();
		            e.result = event.result as GetZoneMapByIdResponse;
		                       e.headers = event.headers;
		             getZoneMapById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getZones operation
          

        /**
         * @see IZoneMapServiceService#getZones()
         */
        public function getZones(getZones:GetZones):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getZones(getZones);
            _internal_token.addEventListener("result",_getZones_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IZoneMapServiceService#getZones_send()
		 */    
        public function getZones_send():AsyncToken
        {
        	return getZones(_getZones_request.getZones);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getZones_request:GetZones_request;
		/**
		 * @see IZoneMapServiceService#getZones_request_var
		 */
		[Bindable]
		public function get getZones_request_var():GetZones_request
		{
			return _getZones_request;
		}
		
		/**
		 * @private
		 */
		public function set getZones_request_var(request:GetZones_request):void
		{
			_getZones_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getZones_lastResult:GetZonesResponse;
		[Bindable]
		/**
		 * @see IZoneMapServiceService#getZones_lastResult
		 */	  
		public function get getZones_lastResult():GetZonesResponse
		{
			return _getZones_lastResult;
		}
		/**
		 * @private
		 */
		public function set getZones_lastResult(lastResult:GetZonesResponse):void
		{
			_getZones_lastResult = lastResult;
		}
		
		/**
		 * @see IZoneMapServiceService#addgetZones()
		 */
		public function addgetZonesEventListener(listener:Function):void
		{
			addEventListener(GetZonesResultEvent.GetZones_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getZones_populate_results(event:ResultEvent):void
		{
			var e:GetZonesResultEvent = new GetZonesResultEvent();
		            e.result = event.result as GetZonesResponse;
		                       e.headers = event.headers;
		             getZones_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the addZoneMap operation
          

        /**
         * @see IZoneMapServiceService#addZoneMap()
         */
        public function addZoneMap(addZoneMap:AddZoneMap):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addZoneMap(addZoneMap);
            _internal_token.addEventListener("result",_addZoneMap_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IZoneMapServiceService#addZoneMap_send()
		 */    
        public function addZoneMap_send():AsyncToken
        {
        	return addZoneMap(_addZoneMap_request.addZoneMap);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addZoneMap_request:AddZoneMap_request;
		/**
		 * @see IZoneMapServiceService#addZoneMap_request_var
		 */
		[Bindable]
		public function get addZoneMap_request_var():AddZoneMap_request
		{
			return _addZoneMap_request;
		}
		
		/**
		 * @private
		 */
		public function set addZoneMap_request_var(request:AddZoneMap_request):void
		{
			_addZoneMap_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addZoneMap_lastResult:AddZoneMapResponse;
		[Bindable]
		/**
		 * @see IZoneMapServiceService#addZoneMap_lastResult
		 */	  
		public function get addZoneMap_lastResult():AddZoneMapResponse
		{
			return _addZoneMap_lastResult;
		}
		/**
		 * @private
		 */
		public function set addZoneMap_lastResult(lastResult:AddZoneMapResponse):void
		{
			_addZoneMap_lastResult = lastResult;
		}
		
		/**
		 * @see IZoneMapServiceService#addaddZoneMap()
		 */
		public function addaddZoneMapEventListener(listener:Function):void
		{
			addEventListener(AddZoneMapResultEvent.AddZoneMap_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addZoneMap_populate_results(event:ResultEvent):void
		{
			var e:AddZoneMapResultEvent = new AddZoneMapResultEvent();
		            e.result = event.result as AddZoneMapResponse;
		                       e.headers = event.headers;
		             addZoneMap_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the updateZoneMapById operation
          

        /**
         * @see IZoneMapServiceService#updateZoneMapById()
         */
        public function updateZoneMapById(updateZoneMapById:UpdateZoneMapById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateZoneMapById(updateZoneMapById);
            _internal_token.addEventListener("result",_updateZoneMapById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IZoneMapServiceService#updateZoneMapById_send()
		 */    
        public function updateZoneMapById_send():AsyncToken
        {
        	return updateZoneMapById(_updateZoneMapById_request.updateZoneMapById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateZoneMapById_request:UpdateZoneMapById_request;
		/**
		 * @see IZoneMapServiceService#updateZoneMapById_request_var
		 */
		[Bindable]
		public function get updateZoneMapById_request_var():UpdateZoneMapById_request
		{
			return _updateZoneMapById_request;
		}
		
		/**
		 * @private
		 */
		public function set updateZoneMapById_request_var(request:UpdateZoneMapById_request):void
		{
			_updateZoneMapById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateZoneMapById_lastResult:UpdateZoneMapByIdResponse;
		[Bindable]
		/**
		 * @see IZoneMapServiceService#updateZoneMapById_lastResult
		 */	  
		public function get updateZoneMapById_lastResult():UpdateZoneMapByIdResponse
		{
			return _updateZoneMapById_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateZoneMapById_lastResult(lastResult:UpdateZoneMapByIdResponse):void
		{
			_updateZoneMapById_lastResult = lastResult;
		}
		
		/**
		 * @see IZoneMapServiceService#addupdateZoneMapById()
		 */
		public function addupdateZoneMapByIdEventListener(listener:Function):void
		{
			addEventListener(UpdateZoneMapByIdResultEvent.UpdateZoneMapById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateZoneMapById_populate_results(event:ResultEvent):void
		{
			var e:UpdateZoneMapByIdResultEvent = new UpdateZoneMapByIdResultEvent();
		            e.result = event.result as UpdateZoneMapByIdResponse;
		                       e.headers = event.headers;
		             updateZoneMapById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IZoneMapServiceService#getWebService()
		 */
		public function getWebService():BaseZoneMapServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addZoneMapServiceServiceFaultEventListener(listener:Function):void
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
