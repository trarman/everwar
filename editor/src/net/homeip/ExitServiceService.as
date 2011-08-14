/**
 * ExitServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:ExitServiceService= new ExitServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addremoveExitByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.removeExitById(myremoveExitById,myid);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ExitServiceService id="myService">
  *   <srv:removeExitById_request_var>
  *		<srv:RemoveExitById_request removeExitById=myValue,id=myValue/>
  *   </srv:removeExitById_request_var>
  * </srv:ExitServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.removeExitById_send()" />
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
     * Dispatches when a call to the operation removeExitById completes with success
     * and returns some data
     * @eventType RemoveExitByIdResultEvent
     */
    [Event(name="RemoveExitById_result", type="net.homeip.RemoveExitByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateExit completes with success
     * and returns some data
     * @eventType UpdateExitResultEvent
     */
    [Event(name="UpdateExit_result", type="net.homeip.UpdateExitResultEvent")]
    
    /**
     * Dispatches when a call to the operation getExitById completes with success
     * and returns some data
     * @eventType GetExitByIdResultEvent
     */
    [Event(name="GetExitById_result", type="net.homeip.GetExitByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation addExit completes with success
     * and returns some data
     * @eventType AddExitResultEvent
     */
    [Event(name="AddExit_result", type="net.homeip.AddExitResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class ExitServiceService extends EventDispatcher implements IExitServiceService
	{
    	private var _baseService:BaseExitServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function ExitServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseExitServiceService(destination,rootURL);
        }
        
		//stub functions for the removeExitById operation
          

        /**
         * @see IExitServiceService#removeExitById()
         */
        public function removeExitById(removeExitById:RemoveExitById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removeExitById(removeExitById);
            _internal_token.addEventListener("result",_removeExitById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IExitServiceService#removeExitById_send()
		 */    
        public function removeExitById_send():AsyncToken
        {
        	return removeExitById(_removeExitById_request.removeExitById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removeExitById_request:RemoveExitById_request;
		/**
		 * @see IExitServiceService#removeExitById_request_var
		 */
		[Bindable]
		public function get removeExitById_request_var():RemoveExitById_request
		{
			return _removeExitById_request;
		}
		
		/**
		 * @private
		 */
		public function set removeExitById_request_var(request:RemoveExitById_request):void
		{
			_removeExitById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removeExitById_lastResult:RemoveExitByIdResponse;
		[Bindable]
		/**
		 * @see IExitServiceService#removeExitById_lastResult
		 */	  
		public function get removeExitById_lastResult():RemoveExitByIdResponse
		{
			return _removeExitById_lastResult;
		}
		/**
		 * @private
		 */
		public function set removeExitById_lastResult(lastResult:RemoveExitByIdResponse):void
		{
			_removeExitById_lastResult = lastResult;
		}
		
		/**
		 * @see IExitServiceService#addremoveExitById()
		 */
		public function addremoveExitByIdEventListener(listener:Function):void
		{
			addEventListener(RemoveExitByIdResultEvent.RemoveExitById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removeExitById_populate_results(event:ResultEvent):void
		{
			var e:RemoveExitByIdResultEvent = new RemoveExitByIdResultEvent();
		            e.result = event.result as RemoveExitByIdResponse;
		                       e.headers = event.headers;
		             removeExitById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the updateExit operation
          

        /**
         * @see IExitServiceService#updateExit()
         */
        public function updateExit(updateExit:UpdateExit):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateExit(updateExit);
            _internal_token.addEventListener("result",_updateExit_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IExitServiceService#updateExit_send()
		 */    
        public function updateExit_send():AsyncToken
        {
        	return updateExit(_updateExit_request.updateExit);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateExit_request:UpdateExit_request;
		/**
		 * @see IExitServiceService#updateExit_request_var
		 */
		[Bindable]
		public function get updateExit_request_var():UpdateExit_request
		{
			return _updateExit_request;
		}
		
		/**
		 * @private
		 */
		public function set updateExit_request_var(request:UpdateExit_request):void
		{
			_updateExit_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateExit_lastResult:UpdateExitResponse;
		[Bindable]
		/**
		 * @see IExitServiceService#updateExit_lastResult
		 */	  
		public function get updateExit_lastResult():UpdateExitResponse
		{
			return _updateExit_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateExit_lastResult(lastResult:UpdateExitResponse):void
		{
			_updateExit_lastResult = lastResult;
		}
		
		/**
		 * @see IExitServiceService#addupdateExit()
		 */
		public function addupdateExitEventListener(listener:Function):void
		{
			addEventListener(UpdateExitResultEvent.UpdateExit_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateExit_populate_results(event:ResultEvent):void
		{
			var e:UpdateExitResultEvent = new UpdateExitResultEvent();
		            e.result = event.result as UpdateExitResponse;
		                       e.headers = event.headers;
		             updateExit_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getExitById operation
          

        /**
         * @see IExitServiceService#getExitById()
         */
        public function getExitById(getExitById:GetExitById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getExitById(getExitById);
            _internal_token.addEventListener("result",_getExitById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IExitServiceService#getExitById_send()
		 */    
        public function getExitById_send():AsyncToken
        {
        	return getExitById(_getExitById_request.getExitById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getExitById_request:GetExitById_request;
		/**
		 * @see IExitServiceService#getExitById_request_var
		 */
		[Bindable]
		public function get getExitById_request_var():GetExitById_request
		{
			return _getExitById_request;
		}
		
		/**
		 * @private
		 */
		public function set getExitById_request_var(request:GetExitById_request):void
		{
			_getExitById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getExitById_lastResult:GetExitByIdResponse;
		[Bindable]
		/**
		 * @see IExitServiceService#getExitById_lastResult
		 */	  
		public function get getExitById_lastResult():GetExitByIdResponse
		{
			return _getExitById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getExitById_lastResult(lastResult:GetExitByIdResponse):void
		{
			_getExitById_lastResult = lastResult;
		}
		
		/**
		 * @see IExitServiceService#addgetExitById()
		 */
		public function addgetExitByIdEventListener(listener:Function):void
		{
			addEventListener(GetExitByIdResultEvent.GetExitById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getExitById_populate_results(event:ResultEvent):void
		{
			var e:GetExitByIdResultEvent = new GetExitByIdResultEvent();
		            e.result = event.result as GetExitByIdResponse;
		                       e.headers = event.headers;
		             getExitById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the addExit operation
          

        /**
         * @see IExitServiceService#addExit()
         */
        public function addExit(addExit:AddExit):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addExit(addExit);
            _internal_token.addEventListener("result",_addExit_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IExitServiceService#addExit_send()
		 */    
        public function addExit_send():AsyncToken
        {
        	return addExit(_addExit_request.addExit);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addExit_request:AddExit_request;
		/**
		 * @see IExitServiceService#addExit_request_var
		 */
		[Bindable]
		public function get addExit_request_var():AddExit_request
		{
			return _addExit_request;
		}
		
		/**
		 * @private
		 */
		public function set addExit_request_var(request:AddExit_request):void
		{
			_addExit_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addExit_lastResult:AddExitResponse;
		[Bindable]
		/**
		 * @see IExitServiceService#addExit_lastResult
		 */	  
		public function get addExit_lastResult():AddExitResponse
		{
			return _addExit_lastResult;
		}
		/**
		 * @private
		 */
		public function set addExit_lastResult(lastResult:AddExitResponse):void
		{
			_addExit_lastResult = lastResult;
		}
		
		/**
		 * @see IExitServiceService#addaddExit()
		 */
		public function addaddExitEventListener(listener:Function):void
		{
			addEventListener(AddExitResultEvent.AddExit_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addExit_populate_results(event:ResultEvent):void
		{
			var e:AddExitResultEvent = new AddExitResultEvent();
		            e.result = event.result as AddExitResponse;
		                       e.headers = event.headers;
		             addExit_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IExitServiceService#getWebService()
		 */
		public function getWebService():BaseExitServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addExitServiceServiceFaultEventListener(listener:Function):void
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
