/**
 * ConversationServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:ConversationServiceService= new ConversationServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetConversationByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getConversationById(myid,mygetConversationById);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ConversationServiceService id="myService">
  *   <srv:getConversationById_request_var>
  *		<srv:GetConversationById_request id=myValue,getConversationById=myValue/>
  *   </srv:getConversationById_request_var>
  * </srv:ConversationServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getConversationById_send()" />
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
     * Dispatches when a call to the operation getConversationById completes with success
     * and returns some data
     * @eventType GetConversationByIdResultEvent
     */
    [Event(name="GetConversationById_result", type="net.homeip.GetConversationByIdResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class ConversationServiceService extends EventDispatcher implements IConversationServiceService
	{
    	private var _baseService:BaseConversationServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function ConversationServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseConversationServiceService(destination,rootURL);
        }
        
		//stub functions for the getConversationById operation
          

        /**
         * @see IConversationServiceService#getConversationById()
         */
        public function getConversationById(getConversationById:GetConversationById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getConversationById(getConversationById);
            _internal_token.addEventListener("result",_getConversationById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IConversationServiceService#getConversationById_send()
		 */    
        public function getConversationById_send():AsyncToken
        {
        	return getConversationById(_getConversationById_request.getConversationById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getConversationById_request:GetConversationById_request;
		/**
		 * @see IConversationServiceService#getConversationById_request_var
		 */
		[Bindable]
		public function get getConversationById_request_var():GetConversationById_request
		{
			return _getConversationById_request;
		}
		
		/**
		 * @private
		 */
		public function set getConversationById_request_var(request:GetConversationById_request):void
		{
			_getConversationById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getConversationById_lastResult:GetConversationByIdResponse;
		[Bindable]
		/**
		 * @see IConversationServiceService#getConversationById_lastResult
		 */	  
		public function get getConversationById_lastResult():GetConversationByIdResponse
		{
			return _getConversationById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getConversationById_lastResult(lastResult:GetConversationByIdResponse):void
		{
			_getConversationById_lastResult = lastResult;
		}
		
		/**
		 * @see IConversationServiceService#addgetConversationById()
		 */
		public function addgetConversationByIdEventListener(listener:Function):void
		{
			addEventListener(GetConversationByIdResultEvent.GetConversationById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getConversationById_populate_results(event:ResultEvent):void
		{
			var e:GetConversationByIdResultEvent = new GetConversationByIdResultEvent();
		            e.result = event.result as GetConversationByIdResponse;
		                       e.headers = event.headers;
		             getConversationById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IConversationServiceService#getWebService()
		 */
		public function getWebService():BaseConversationServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addConversationServiceServiceFaultEventListener(listener:Function):void
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
