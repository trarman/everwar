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
  * myService.addremoveNPCByIdEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.removeNPCById(myremoveNPCById,myid);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:NPCServiceService id="myService">
  *   <srv:removeNPCById_request_var>
  *		<srv:RemoveNPCById_request removeNPCById=myValue,id=myValue/>
  *   </srv:removeNPCById_request_var>
  * </srv:NPCServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.removeNPCById_send()" />
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
     * Dispatches when a call to the operation removeNPCById completes with success
     * and returns some data
     * @eventType RemoveNPCByIdResultEvent
     */
    [Event(name="RemoveNPCById_result", type="net.homeip.RemoveNPCByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation addNPC completes with success
     * and returns some data
     * @eventType AddNPCResultEvent
     */
    [Event(name="AddNPC_result", type="net.homeip.AddNPCResultEvent")]
    
    /**
     * Dispatches when a call to the operation getNPCList completes with success
     * and returns some data
     * @eventType GetNPCListResultEvent
     */
    [Event(name="GetNPCList_result", type="net.homeip.GetNPCListResultEvent")]
    
    /**
     * Dispatches when a call to the operation getNPCById completes with success
     * and returns some data
     * @eventType GetNPCByIdResultEvent
     */
    [Event(name="GetNPCById_result", type="net.homeip.GetNPCByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateNPC completes with success
     * and returns some data
     * @eventType UpdateNPCResultEvent
     */
    [Event(name="UpdateNPC_result", type="net.homeip.UpdateNPCResultEvent")]
    
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
        
		//stub functions for the removeNPCById operation
          

        /**
         * @see INPCServiceService#removeNPCById()
         */
        public function removeNPCById(removeNPCById:RemoveNPCById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removeNPCById(removeNPCById);
            _internal_token.addEventListener("result",_removeNPCById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INPCServiceService#removeNPCById_send()
		 */    
        public function removeNPCById_send():AsyncToken
        {
        	return removeNPCById(_removeNPCById_request.removeNPCById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removeNPCById_request:RemoveNPCById_request;
		/**
		 * @see INPCServiceService#removeNPCById_request_var
		 */
		[Bindable]
		public function get removeNPCById_request_var():RemoveNPCById_request
		{
			return _removeNPCById_request;
		}
		
		/**
		 * @private
		 */
		public function set removeNPCById_request_var(request:RemoveNPCById_request):void
		{
			_removeNPCById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removeNPCById_lastResult:RemoveNPCByIdResponse;
		[Bindable]
		/**
		 * @see INPCServiceService#removeNPCById_lastResult
		 */	  
		public function get removeNPCById_lastResult():RemoveNPCByIdResponse
		{
			return _removeNPCById_lastResult;
		}
		/**
		 * @private
		 */
		public function set removeNPCById_lastResult(lastResult:RemoveNPCByIdResponse):void
		{
			_removeNPCById_lastResult = lastResult;
		}
		
		/**
		 * @see INPCServiceService#addremoveNPCById()
		 */
		public function addremoveNPCByIdEventListener(listener:Function):void
		{
			addEventListener(RemoveNPCByIdResultEvent.RemoveNPCById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removeNPCById_populate_results(event:ResultEvent):void
		{
			var e:RemoveNPCByIdResultEvent = new RemoveNPCByIdResultEvent();
		            e.result = event.result as RemoveNPCByIdResponse;
		                       e.headers = event.headers;
		             removeNPCById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the addNPC operation
          

        /**
         * @see INPCServiceService#addNPC()
         */
        public function addNPC(addNPC:AddNPC):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addNPC(addNPC);
            _internal_token.addEventListener("result",_addNPC_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INPCServiceService#addNPC_send()
		 */    
        public function addNPC_send():AsyncToken
        {
        	return addNPC(_addNPC_request.addNPC);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addNPC_request:AddNPC_request;
		/**
		 * @see INPCServiceService#addNPC_request_var
		 */
		[Bindable]
		public function get addNPC_request_var():AddNPC_request
		{
			return _addNPC_request;
		}
		
		/**
		 * @private
		 */
		public function set addNPC_request_var(request:AddNPC_request):void
		{
			_addNPC_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addNPC_lastResult:AddNPCResponse;
		[Bindable]
		/**
		 * @see INPCServiceService#addNPC_lastResult
		 */	  
		public function get addNPC_lastResult():AddNPCResponse
		{
			return _addNPC_lastResult;
		}
		/**
		 * @private
		 */
		public function set addNPC_lastResult(lastResult:AddNPCResponse):void
		{
			_addNPC_lastResult = lastResult;
		}
		
		/**
		 * @see INPCServiceService#addaddNPC()
		 */
		public function addaddNPCEventListener(listener:Function):void
		{
			addEventListener(AddNPCResultEvent.AddNPC_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addNPC_populate_results(event:ResultEvent):void
		{
			var e:AddNPCResultEvent = new AddNPCResultEvent();
		            e.result = event.result as AddNPCResponse;
		                       e.headers = event.headers;
		             addNPC_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getNPCList operation
          

        /**
         * @see INPCServiceService#getNPCList()
         */
        public function getNPCList(getNPCList:GetNPCList):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getNPCList(getNPCList);
            _internal_token.addEventListener("result",_getNPCList_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INPCServiceService#getNPCList_send()
		 */    
        public function getNPCList_send():AsyncToken
        {
        	return getNPCList(_getNPCList_request.getNPCList);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getNPCList_request:GetNPCList_request;
		/**
		 * @see INPCServiceService#getNPCList_request_var
		 */
		[Bindable]
		public function get getNPCList_request_var():GetNPCList_request
		{
			return _getNPCList_request;
		}
		
		/**
		 * @private
		 */
		public function set getNPCList_request_var(request:GetNPCList_request):void
		{
			_getNPCList_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getNPCList_lastResult:GetNPCListResponse;
		[Bindable]
		/**
		 * @see INPCServiceService#getNPCList_lastResult
		 */	  
		public function get getNPCList_lastResult():GetNPCListResponse
		{
			return _getNPCList_lastResult;
		}
		/**
		 * @private
		 */
		public function set getNPCList_lastResult(lastResult:GetNPCListResponse):void
		{
			_getNPCList_lastResult = lastResult;
		}
		
		/**
		 * @see INPCServiceService#addgetNPCList()
		 */
		public function addgetNPCListEventListener(listener:Function):void
		{
			addEventListener(GetNPCListResultEvent.GetNPCList_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getNPCList_populate_results(event:ResultEvent):void
		{
			var e:GetNPCListResultEvent = new GetNPCListResultEvent();
		            e.result = event.result as GetNPCListResponse;
		                       e.headers = event.headers;
		             getNPCList_lastResult = e.result;
		             dispatchEvent(e);
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
		
		//stub functions for the updateNPC operation
          

        /**
         * @see INPCServiceService#updateNPC()
         */
        public function updateNPC(updateNPC:UpdateNPC):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateNPC(updateNPC);
            _internal_token.addEventListener("result",_updateNPC_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INPCServiceService#updateNPC_send()
		 */    
        public function updateNPC_send():AsyncToken
        {
        	return updateNPC(_updateNPC_request.updateNPC);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateNPC_request:UpdateNPC_request;
		/**
		 * @see INPCServiceService#updateNPC_request_var
		 */
		[Bindable]
		public function get updateNPC_request_var():UpdateNPC_request
		{
			return _updateNPC_request;
		}
		
		/**
		 * @private
		 */
		public function set updateNPC_request_var(request:UpdateNPC_request):void
		{
			_updateNPC_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateNPC_lastResult:UpdateNPCResponse;
		[Bindable]
		/**
		 * @see INPCServiceService#updateNPC_lastResult
		 */	  
		public function get updateNPC_lastResult():UpdateNPCResponse
		{
			return _updateNPC_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateNPC_lastResult(lastResult:UpdateNPCResponse):void
		{
			_updateNPC_lastResult = lastResult;
		}
		
		/**
		 * @see INPCServiceService#addupdateNPC()
		 */
		public function addupdateNPCEventListener(listener:Function):void
		{
			addEventListener(UpdateNPCResultEvent.UpdateNPC_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateNPC_populate_results(event:ResultEvent):void
		{
			var e:UpdateNPCResultEvent = new UpdateNPCResultEvent();
		            e.result = event.result as UpdateNPCResponse;
		                       e.headers = event.headers;
		             updateNPC_lastResult = e.result;
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
