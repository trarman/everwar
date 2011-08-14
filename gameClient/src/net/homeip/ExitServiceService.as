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
  * myService.addgetExitByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getExitById(mygetExitById,myid);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ExitServiceService id="myService">
  *   <srv:getExitById_request_var>
  *		<srv:GetExitById_request getExitById=myValue,id=myValue/>
  *   </srv:getExitById_request_var>
  * </srv:ExitServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getExitById_send()" />
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
     * Dispatches when a call to the operation getExitById completes with success
     * and returns some data
     * @eventType GetExitByIdResultEvent
     */
    [Event(name="GetExitById_result", type="net.homeip.GetExitByIdResultEvent")]
    
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
