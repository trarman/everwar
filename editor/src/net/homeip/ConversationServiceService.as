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
  * myService.addsaveConversationExchangeEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.saveConversationExchange(myexchange,mysaveConversationExchange);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ConversationServiceService id="myService">
  *   <srv:saveConversationExchange_request_var>
  *		<srv:SaveConversationExchange_request exchange=myValue,saveConversationExchange=myValue/>
  *   </srv:saveConversationExchange_request_var>
  * </srv:ConversationServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.saveConversationExchange_send()" />
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
     * Dispatches when a call to the operation saveConversationExchange completes with success
     * and returns some data
     * @eventType SaveConversationExchangeResultEvent
     */
    [Event(name="SaveConversationExchange_result", type="net.homeip.SaveConversationExchangeResultEvent")]
    
    /**
     * Dispatches when a call to the operation getConversationStarters completes with success
     * and returns some data
     * @eventType GetConversationStartersResultEvent
     */
    [Event(name="GetConversationStarters_result", type="net.homeip.GetConversationStartersResultEvent")]
    
    /**
     * Dispatches when a call to the operation saveConversationAnswer completes with success
     * and returns some data
     * @eventType SaveConversationAnswerResultEvent
     */
    [Event(name="SaveConversationAnswer_result", type="net.homeip.SaveConversationAnswerResultEvent")]
    
    /**
     * Dispatches when a call to the operation removeConversationById completes with success
     * and returns some data
     * @eventType RemoveConversationByIdResultEvent
     */
    [Event(name="RemoveConversationById_result", type="net.homeip.RemoveConversationByIdResultEvent")]
    
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
        
		//stub functions for the saveConversationExchange operation
          

        /**
         * @see IConversationServiceService#saveConversationExchange()
         */
        public function saveConversationExchange(saveConversationExchange:SaveConversationExchange):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.saveConversationExchange(saveConversationExchange);
            _internal_token.addEventListener("result",_saveConversationExchange_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IConversationServiceService#saveConversationExchange_send()
		 */    
        public function saveConversationExchange_send():AsyncToken
        {
        	return saveConversationExchange(_saveConversationExchange_request.saveConversationExchange);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _saveConversationExchange_request:SaveConversationExchange_request;
		/**
		 * @see IConversationServiceService#saveConversationExchange_request_var
		 */
		[Bindable]
		public function get saveConversationExchange_request_var():SaveConversationExchange_request
		{
			return _saveConversationExchange_request;
		}
		
		/**
		 * @private
		 */
		public function set saveConversationExchange_request_var(request:SaveConversationExchange_request):void
		{
			_saveConversationExchange_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _saveConversationExchange_lastResult:SaveConversationExchangeResponse;
		[Bindable]
		/**
		 * @see IConversationServiceService#saveConversationExchange_lastResult
		 */	  
		public function get saveConversationExchange_lastResult():SaveConversationExchangeResponse
		{
			return _saveConversationExchange_lastResult;
		}
		/**
		 * @private
		 */
		public function set saveConversationExchange_lastResult(lastResult:SaveConversationExchangeResponse):void
		{
			_saveConversationExchange_lastResult = lastResult;
		}
		
		/**
		 * @see IConversationServiceService#addsaveConversationExchange()
		 */
		public function addsaveConversationExchangeEventListener(listener:Function):void
		{
			addEventListener(SaveConversationExchangeResultEvent.SaveConversationExchange_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _saveConversationExchange_populate_results(event:ResultEvent):void
		{
			var e:SaveConversationExchangeResultEvent = new SaveConversationExchangeResultEvent();
		            e.result = event.result as SaveConversationExchangeResponse;
		                       e.headers = event.headers;
		             saveConversationExchange_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getConversationStarters operation
          

        /**
         * @see IConversationServiceService#getConversationStarters()
         */
        public function getConversationStarters(getConversationStarters:GetConversationStarters):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getConversationStarters(getConversationStarters);
            _internal_token.addEventListener("result",_getConversationStarters_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IConversationServiceService#getConversationStarters_send()
		 */    
        public function getConversationStarters_send():AsyncToken
        {
        	return getConversationStarters(_getConversationStarters_request.getConversationStarters);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getConversationStarters_request:GetConversationStarters_request;
		/**
		 * @see IConversationServiceService#getConversationStarters_request_var
		 */
		[Bindable]
		public function get getConversationStarters_request_var():GetConversationStarters_request
		{
			return _getConversationStarters_request;
		}
		
		/**
		 * @private
		 */
		public function set getConversationStarters_request_var(request:GetConversationStarters_request):void
		{
			_getConversationStarters_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getConversationStarters_lastResult:GetConversationStartersResponse;
		[Bindable]
		/**
		 * @see IConversationServiceService#getConversationStarters_lastResult
		 */	  
		public function get getConversationStarters_lastResult():GetConversationStartersResponse
		{
			return _getConversationStarters_lastResult;
		}
		/**
		 * @private
		 */
		public function set getConversationStarters_lastResult(lastResult:GetConversationStartersResponse):void
		{
			_getConversationStarters_lastResult = lastResult;
		}
		
		/**
		 * @see IConversationServiceService#addgetConversationStarters()
		 */
		public function addgetConversationStartersEventListener(listener:Function):void
		{
			addEventListener(GetConversationStartersResultEvent.GetConversationStarters_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getConversationStarters_populate_results(event:ResultEvent):void
		{
			var e:GetConversationStartersResultEvent = new GetConversationStartersResultEvent();
		            e.result = event.result as GetConversationStartersResponse;
		                       e.headers = event.headers;
		             getConversationStarters_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the saveConversationAnswer operation
          

        /**
         * @see IConversationServiceService#saveConversationAnswer()
         */
        public function saveConversationAnswer(saveConversationAnswer:SaveConversationAnswer):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.saveConversationAnswer(saveConversationAnswer);
            _internal_token.addEventListener("result",_saveConversationAnswer_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IConversationServiceService#saveConversationAnswer_send()
		 */    
        public function saveConversationAnswer_send():AsyncToken
        {
        	return saveConversationAnswer(_saveConversationAnswer_request.saveConversationAnswer);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _saveConversationAnswer_request:SaveConversationAnswer_request;
		/**
		 * @see IConversationServiceService#saveConversationAnswer_request_var
		 */
		[Bindable]
		public function get saveConversationAnswer_request_var():SaveConversationAnswer_request
		{
			return _saveConversationAnswer_request;
		}
		
		/**
		 * @private
		 */
		public function set saveConversationAnswer_request_var(request:SaveConversationAnswer_request):void
		{
			_saveConversationAnswer_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _saveConversationAnswer_lastResult:SaveConversationAnswerResponse;
		[Bindable]
		/**
		 * @see IConversationServiceService#saveConversationAnswer_lastResult
		 */	  
		public function get saveConversationAnswer_lastResult():SaveConversationAnswerResponse
		{
			return _saveConversationAnswer_lastResult;
		}
		/**
		 * @private
		 */
		public function set saveConversationAnswer_lastResult(lastResult:SaveConversationAnswerResponse):void
		{
			_saveConversationAnswer_lastResult = lastResult;
		}
		
		/**
		 * @see IConversationServiceService#addsaveConversationAnswer()
		 */
		public function addsaveConversationAnswerEventListener(listener:Function):void
		{
			addEventListener(SaveConversationAnswerResultEvent.SaveConversationAnswer_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _saveConversationAnswer_populate_results(event:ResultEvent):void
		{
			var e:SaveConversationAnswerResultEvent = new SaveConversationAnswerResultEvent();
		            e.result = event.result as SaveConversationAnswerResponse;
		                       e.headers = event.headers;
		             saveConversationAnswer_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the removeConversationById operation
          

        /**
         * @see IConversationServiceService#removeConversationById()
         */
        public function removeConversationById(removeConversationById:RemoveConversationById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removeConversationById(removeConversationById);
            _internal_token.addEventListener("result",_removeConversationById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IConversationServiceService#removeConversationById_send()
		 */    
        public function removeConversationById_send():AsyncToken
        {
        	return removeConversationById(_removeConversationById_request.removeConversationById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removeConversationById_request:RemoveConversationById_request;
		/**
		 * @see IConversationServiceService#removeConversationById_request_var
		 */
		[Bindable]
		public function get removeConversationById_request_var():RemoveConversationById_request
		{
			return _removeConversationById_request;
		}
		
		/**
		 * @private
		 */
		public function set removeConversationById_request_var(request:RemoveConversationById_request):void
		{
			_removeConversationById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removeConversationById_lastResult:RemoveConversationByIdResponse;
		[Bindable]
		/**
		 * @see IConversationServiceService#removeConversationById_lastResult
		 */	  
		public function get removeConversationById_lastResult():RemoveConversationByIdResponse
		{
			return _removeConversationById_lastResult;
		}
		/**
		 * @private
		 */
		public function set removeConversationById_lastResult(lastResult:RemoveConversationByIdResponse):void
		{
			_removeConversationById_lastResult = lastResult;
		}
		
		/**
		 * @see IConversationServiceService#addremoveConversationById()
		 */
		public function addremoveConversationByIdEventListener(listener:Function):void
		{
			addEventListener(RemoveConversationByIdResultEvent.RemoveConversationById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removeConversationById_populate_results(event:ResultEvent):void
		{
			var e:RemoveConversationByIdResultEvent = new RemoveConversationByIdResultEvent();
		            e.result = event.result as RemoveConversationByIdResponse;
		                       e.headers = event.headers;
		             removeConversationById_lastResult = e.result;
		             dispatchEvent(e);
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
