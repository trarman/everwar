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
  * myService.addgetMapObjectsForZoneIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getMapObjectsForZoneId(mygetMapObjectsForZoneId,myzoneId);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:MapObjectServiceService id="myService">
  *   <srv:getMapObjectsForZoneId_request_var>
  *		<srv:GetMapObjectsForZoneId_request getMapObjectsForZoneId=myValue,zoneId=myValue/>
  *   </srv:getMapObjectsForZoneId_request_var>
  * </srv:MapObjectServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getMapObjectsForZoneId_send()" />
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
     * Dispatches when a call to the operation getMapObjectsForZoneId completes with success
     * and returns some data
     * @eventType GetMapObjectsForZoneIdResultEvent
     */
    [Event(name="GetMapObjectsForZoneId_result", type="net.homeip.GetMapObjectsForZoneIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateMapObject completes with success
     * and returns some data
     * @eventType UpdateMapObjectResultEvent
     */
    [Event(name="UpdateMapObject_result", type="net.homeip.UpdateMapObjectResultEvent")]
    
    /**
     * Dispatches when a call to the operation removeMapObjectById completes with success
     * and returns some data
     * @eventType RemoveMapObjectByIdResultEvent
     */
    [Event(name="RemoveMapObjectById_result", type="net.homeip.RemoveMapObjectByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation addMapObject completes with success
     * and returns some data
     * @eventType AddMapObjectResultEvent
     */
    [Event(name="AddMapObject_result", type="net.homeip.AddMapObjectResultEvent")]
    
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
		
		//stub functions for the updateMapObject operation
          

        /**
         * @see IMapObjectServiceService#updateMapObject()
         */
        public function updateMapObject(updateMapObject:UpdateMapObject):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateMapObject(updateMapObject);
            _internal_token.addEventListener("result",_updateMapObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMapObjectServiceService#updateMapObject_send()
		 */    
        public function updateMapObject_send():AsyncToken
        {
        	return updateMapObject(_updateMapObject_request.updateMapObject);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateMapObject_request:UpdateMapObject_request;
		/**
		 * @see IMapObjectServiceService#updateMapObject_request_var
		 */
		[Bindable]
		public function get updateMapObject_request_var():UpdateMapObject_request
		{
			return _updateMapObject_request;
		}
		
		/**
		 * @private
		 */
		public function set updateMapObject_request_var(request:UpdateMapObject_request):void
		{
			_updateMapObject_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateMapObject_lastResult:UpdateMapObjectResponse;
		[Bindable]
		/**
		 * @see IMapObjectServiceService#updateMapObject_lastResult
		 */	  
		public function get updateMapObject_lastResult():UpdateMapObjectResponse
		{
			return _updateMapObject_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateMapObject_lastResult(lastResult:UpdateMapObjectResponse):void
		{
			_updateMapObject_lastResult = lastResult;
		}
		
		/**
		 * @see IMapObjectServiceService#addupdateMapObject()
		 */
		public function addupdateMapObjectEventListener(listener:Function):void
		{
			addEventListener(UpdateMapObjectResultEvent.UpdateMapObject_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateMapObject_populate_results(event:ResultEvent):void
		{
			var e:UpdateMapObjectResultEvent = new UpdateMapObjectResultEvent();
		            e.result = event.result as UpdateMapObjectResponse;
		                       e.headers = event.headers;
		             updateMapObject_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the removeMapObjectById operation
          

        /**
         * @see IMapObjectServiceService#removeMapObjectById()
         */
        public function removeMapObjectById(removeMapObjectById:RemoveMapObjectById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removeMapObjectById(removeMapObjectById);
            _internal_token.addEventListener("result",_removeMapObjectById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMapObjectServiceService#removeMapObjectById_send()
		 */    
        public function removeMapObjectById_send():AsyncToken
        {
        	return removeMapObjectById(_removeMapObjectById_request.removeMapObjectById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removeMapObjectById_request:RemoveMapObjectById_request;
		/**
		 * @see IMapObjectServiceService#removeMapObjectById_request_var
		 */
		[Bindable]
		public function get removeMapObjectById_request_var():RemoveMapObjectById_request
		{
			return _removeMapObjectById_request;
		}
		
		/**
		 * @private
		 */
		public function set removeMapObjectById_request_var(request:RemoveMapObjectById_request):void
		{
			_removeMapObjectById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removeMapObjectById_lastResult:RemoveMapObjectByIdResponse;
		[Bindable]
		/**
		 * @see IMapObjectServiceService#removeMapObjectById_lastResult
		 */	  
		public function get removeMapObjectById_lastResult():RemoveMapObjectByIdResponse
		{
			return _removeMapObjectById_lastResult;
		}
		/**
		 * @private
		 */
		public function set removeMapObjectById_lastResult(lastResult:RemoveMapObjectByIdResponse):void
		{
			_removeMapObjectById_lastResult = lastResult;
		}
		
		/**
		 * @see IMapObjectServiceService#addremoveMapObjectById()
		 */
		public function addremoveMapObjectByIdEventListener(listener:Function):void
		{
			addEventListener(RemoveMapObjectByIdResultEvent.RemoveMapObjectById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removeMapObjectById_populate_results(event:ResultEvent):void
		{
			var e:RemoveMapObjectByIdResultEvent = new RemoveMapObjectByIdResultEvent();
		            e.result = event.result as RemoveMapObjectByIdResponse;
		                       e.headers = event.headers;
		             removeMapObjectById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the addMapObject operation
          

        /**
         * @see IMapObjectServiceService#addMapObject()
         */
        public function addMapObject(addMapObject:AddMapObject):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addMapObject(addMapObject);
            _internal_token.addEventListener("result",_addMapObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMapObjectServiceService#addMapObject_send()
		 */    
        public function addMapObject_send():AsyncToken
        {
        	return addMapObject(_addMapObject_request.addMapObject);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addMapObject_request:AddMapObject_request;
		/**
		 * @see IMapObjectServiceService#addMapObject_request_var
		 */
		[Bindable]
		public function get addMapObject_request_var():AddMapObject_request
		{
			return _addMapObject_request;
		}
		
		/**
		 * @private
		 */
		public function set addMapObject_request_var(request:AddMapObject_request):void
		{
			_addMapObject_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addMapObject_lastResult:AddMapObjectResponse;
		[Bindable]
		/**
		 * @see IMapObjectServiceService#addMapObject_lastResult
		 */	  
		public function get addMapObject_lastResult():AddMapObjectResponse
		{
			return _addMapObject_lastResult;
		}
		/**
		 * @private
		 */
		public function set addMapObject_lastResult(lastResult:AddMapObjectResponse):void
		{
			_addMapObject_lastResult = lastResult;
		}
		
		/**
		 * @see IMapObjectServiceService#addaddMapObject()
		 */
		public function addaddMapObjectEventListener(listener:Function):void
		{
			addEventListener(AddMapObjectResultEvent.AddMapObject_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addMapObject_populate_results(event:ResultEvent):void
		{
			var e:AddMapObjectResultEvent = new AddMapObjectResultEvent();
		            e.result = event.result as AddMapObjectResponse;
		                       e.headers = event.headers;
		             addMapObject_lastResult = e.result;
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
