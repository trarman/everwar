/**
 * NPCServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:NPCServiceService= new NPCServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetNPCByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getNPCById(mygetNPCById,myid);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:NPCServiceService id="myService">
  *   <srv:getNPCById_request_var>
  *		<srv:GetNPCById_request getNPCById=myValue,id=myValue/>
  *   </srv:getNPCById_request_var>
  * </srv:NPCServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getNPCById_send()" />
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
     * Dispatches when a call to the operation getNPCById completes with success
     * and returns some data
     * @eventType GetNPCByIdResultEvent
     */
    [Event(name="GetNPCById_result", type="net.homeip.GetNPCByIdResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class NPCServiceService extends EventDispatcher implements INPCServiceService
	{
    	private var _baseService:BaseNPCServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function NPCServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseNPCServiceService(destination,rootURL);
        }
        
		//stub functions for the getNPCById operation
          

        /**
         * @see INPCServiceService#getNPCById()
         */
        public function getNPCById(getNPCById:GetNPCById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getNPCById(getNPCById);
            _internal_token.addEventListener("result",_getNPCById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INPCServiceService#getNPCById_send()
		 */    
        public function getNPCById_send():AsyncToken
        {
        	return getNPCById(_getNPCById_request.getNPCById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getNPCById_request:GetNPCById_request;
		/**
		 * @see INPCServiceService#getNPCById_request_var
		 */
		[Bindable]
		public function get getNPCById_request_var():GetNPCById_request
		{
			return _getNPCById_request;
		}
		
		/**
		 * @private
		 */
		public function set getNPCById_request_var(request:GetNPCById_request):void
		{
			_getNPCById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getNPCById_lastResult:GetNPCByIdResponse;
		[Bindable]
		/**
		 * @see INPCServiceService#getNPCById_lastResult
		 */	  
		public function get getNPCById_lastResult():GetNPCByIdResponse
		{
			return _getNPCById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getNPCById_lastResult(lastResult:GetNPCByIdResponse):void
		{
			_getNPCById_lastResult = lastResult;
		}
		
		/**
		 * @see INPCServiceService#addgetNPCById()
		 */
		public function addgetNPCByIdEventListener(listener:Function):void
		{
			addEventListener(GetNPCByIdResultEvent.GetNPCById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getNPCById_populate_results(event:ResultEvent):void
		{
			var e:GetNPCByIdResultEvent = new GetNPCByIdResultEvent();
		            e.result = event.result as GetNPCByIdResponse;
		                       e.headers = event.headers;
		             getNPCById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see INPCServiceService#getWebService()
		 */
		public function getWebService():BaseNPCServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addNPCServiceServiceFaultEventListener(listener:Function):void
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
