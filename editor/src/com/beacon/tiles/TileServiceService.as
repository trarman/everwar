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
  * myService.addaddTileEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.addTile(myaddTile,myname,mycategoryId,myimageData);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.beacon.tiles.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:TileServiceService id="myService">
  *   <srv:addTile_request_var>
  *		<srv:AddTile_request addTile=myValue,name=myValue,categoryId=myValue,imageData=myValue/>
  *   </srv:addTile_request_var>
  * </srv:TileServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.addTile_send()" />
  */
package com.beacon.tiles
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation addTile completes with success
     * and returns some data
     * @eventType AddTileResultEvent
     */
    [Event(name="AddTile_result", type="com.beacon.tiles.AddTileResultEvent")]
    
    /**
     * Dispatches when a call to the operation getTilesByCategoryId completes with success
     * and returns some data
     * @eventType GetTilesByCategoryIdResultEvent
     */
    [Event(name="GetTilesByCategoryId_result", type="com.beacon.tiles.GetTilesByCategoryIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getTileById completes with success
     * and returns some data
     * @eventType GetTileByIdResultEvent
     */
    [Event(name="GetTileById_result", type="com.beacon.tiles.GetTileByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateTileById completes with success
     * and returns some data
     * @eventType UpdateTileByIdResultEvent
     */
    [Event(name="UpdateTileById_result", type="com.beacon.tiles.UpdateTileByIdResultEvent")]
    
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
        
		//stub functions for the addTile operation
          

        /**
         * @see ITileServiceService#addTile()
         */
        public function addTile(addTile:AddTile):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addTile(addTile);
            _internal_token.addEventListener("result",_addTile_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITileServiceService#addTile_send()
		 */    
        public function addTile_send():AsyncToken
        {
        	return addTile(_addTile_request.addTile);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addTile_request:AddTile_request;
		/**
		 * @see ITileServiceService#addTile_request_var
		 */
		[Bindable]
		public function get addTile_request_var():AddTile_request
		{
			return _addTile_request;
		}
		
		/**
		 * @private
		 */
		public function set addTile_request_var(request:AddTile_request):void
		{
			_addTile_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addTile_lastResult:AddTileResponse;
		[Bindable]
		/**
		 * @see ITileServiceService#addTile_lastResult
		 */	  
		public function get addTile_lastResult():AddTileResponse
		{
			return _addTile_lastResult;
		}
		/**
		 * @private
		 */
		public function set addTile_lastResult(lastResult:AddTileResponse):void
		{
			_addTile_lastResult = lastResult;
		}
		
		/**
		 * @see ITileServiceService#addaddTile()
		 */
		public function addaddTileEventListener(listener:Function):void
		{
			addEventListener(AddTileResultEvent.AddTile_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addTile_populate_results(event:ResultEvent):void
		{
			var e:AddTileResultEvent = new AddTileResultEvent();
		            e.result = event.result as AddTileResponse;
		                       e.headers = event.headers;
		             addTile_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getTilesByCategoryId operation
          

        /**
         * @see ITileServiceService#getTilesByCategoryId()
         */
        public function getTilesByCategoryId(getTilesByCategoryId:GetTilesByCategoryId):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getTilesByCategoryId(getTilesByCategoryId);
            _internal_token.addEventListener("result",_getTilesByCategoryId_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITileServiceService#getTilesByCategoryId_send()
		 */    
        public function getTilesByCategoryId_send():AsyncToken
        {
        	return getTilesByCategoryId(_getTilesByCategoryId_request.getTilesByCategoryId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getTilesByCategoryId_request:GetTilesByCategoryId_request;
		/**
		 * @see ITileServiceService#getTilesByCategoryId_request_var
		 */
		[Bindable]
		public function get getTilesByCategoryId_request_var():GetTilesByCategoryId_request
		{
			return _getTilesByCategoryId_request;
		}
		
		/**
		 * @private
		 */
		public function set getTilesByCategoryId_request_var(request:GetTilesByCategoryId_request):void
		{
			_getTilesByCategoryId_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getTilesByCategoryId_lastResult:GetTilesByCategoryIdResponse;
		[Bindable]
		/**
		 * @see ITileServiceService#getTilesByCategoryId_lastResult
		 */	  
		public function get getTilesByCategoryId_lastResult():GetTilesByCategoryIdResponse
		{
			return _getTilesByCategoryId_lastResult;
		}
		/**
		 * @private
		 */
		public function set getTilesByCategoryId_lastResult(lastResult:GetTilesByCategoryIdResponse):void
		{
			_getTilesByCategoryId_lastResult = lastResult;
		}
		
		/**
		 * @see ITileServiceService#addgetTilesByCategoryId()
		 */
		public function addgetTilesByCategoryIdEventListener(listener:Function):void
		{
			addEventListener(GetTilesByCategoryIdResultEvent.GetTilesByCategoryId_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getTilesByCategoryId_populate_results(event:ResultEvent):void
		{
			var e:GetTilesByCategoryIdResultEvent = new GetTilesByCategoryIdResultEvent();
		            e.result = event.result as GetTilesByCategoryIdResponse;
		                       e.headers = event.headers;
		             getTilesByCategoryId_lastResult = e.result;
		             dispatchEvent(e);
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
		
		//stub functions for the updateTileById operation
          

        /**
         * @see ITileServiceService#updateTileById()
         */
        public function updateTileById(updateTileById:UpdateTileById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateTileById(updateTileById);
            _internal_token.addEventListener("result",_updateTileById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITileServiceService#updateTileById_send()
		 */    
        public function updateTileById_send():AsyncToken
        {
        	return updateTileById(_updateTileById_request.updateTileById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateTileById_request:UpdateTileById_request;
		/**
		 * @see ITileServiceService#updateTileById_request_var
		 */
		[Bindable]
		public function get updateTileById_request_var():UpdateTileById_request
		{
			return _updateTileById_request;
		}
		
		/**
		 * @private
		 */
		public function set updateTileById_request_var(request:UpdateTileById_request):void
		{
			_updateTileById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateTileById_lastResult:UpdateTileByIdResponse;
		[Bindable]
		/**
		 * @see ITileServiceService#updateTileById_lastResult
		 */	  
		public function get updateTileById_lastResult():UpdateTileByIdResponse
		{
			return _updateTileById_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateTileById_lastResult(lastResult:UpdateTileByIdResponse):void
		{
			_updateTileById_lastResult = lastResult;
		}
		
		/**
		 * @see ITileServiceService#addupdateTileById()
		 */
		public function addupdateTileByIdEventListener(listener:Function):void
		{
			addEventListener(UpdateTileByIdResultEvent.UpdateTileById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateTileById_populate_results(event:ResultEvent):void
		{
			var e:UpdateTileByIdResultEvent = new UpdateTileByIdResultEvent();
		            e.result = event.result as UpdateTileByIdResponse;
		                       e.headers = event.headers;
		             updateTileById_lastResult = e.result;
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
