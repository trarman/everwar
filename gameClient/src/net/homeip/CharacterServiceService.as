/**
 * CharacterServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:CharacterServiceService= new CharacterServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetCharactersForAccountEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getCharactersForAccount(mygetCharactersForAccount,myaccount);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.homeip.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:CharacterServiceService id="myService">
  *   <srv:getCharactersForAccount_request_var>
  *		<srv:GetCharactersForAccount_request getCharactersForAccount=myValue,account=myValue/>
  *   </srv:getCharactersForAccount_request_var>
  * </srv:CharacterServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getCharactersForAccount_send()" />
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
     * Dispatches when a call to the operation getCharactersForAccount completes with success
     * and returns some data
     * @eventType GetCharactersForAccountResultEvent
     */
    [Event(name="GetCharactersForAccount_result", type="net.homeip.GetCharactersForAccountResultEvent")]
    
    /**
     * Dispatches when a call to the operation addCharacter completes with success
     * and returns some data
     * @eventType AddCharacterResultEvent
     */
    [Event(name="AddCharacter_result", type="net.homeip.AddCharacterResultEvent")]
    
    /**
     * Dispatches when a call to the operation removeCharacterById completes with success
     * and returns some data
     * @eventType RemoveCharacterByIdResultEvent
     */
    [Event(name="RemoveCharacterById_result", type="net.homeip.RemoveCharacterByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getCharacterById completes with success
     * and returns some data
     * @eventType GetCharacterByIdResultEvent
     */
    [Event(name="GetCharacterById_result", type="net.homeip.GetCharacterByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateCharacter completes with success
     * and returns some data
     * @eventType UpdateCharacterResultEvent
     */
    [Event(name="UpdateCharacter_result", type="net.homeip.UpdateCharacterResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class CharacterServiceService extends EventDispatcher implements ICharacterServiceService
	{
    	private var _baseService:BaseCharacterServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function CharacterServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseCharacterServiceService(destination,rootURL);
        }
        
		//stub functions for the getCharactersForAccount operation
          

        /**
         * @see ICharacterServiceService#getCharactersForAccount()
         */
        public function getCharactersForAccount(getCharactersForAccount:GetCharactersForAccount):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCharactersForAccount(getCharactersForAccount);
            _internal_token.addEventListener("result",_getCharactersForAccount_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICharacterServiceService#getCharactersForAccount_send()
		 */    
        public function getCharactersForAccount_send():AsyncToken
        {
        	return getCharactersForAccount(_getCharactersForAccount_request.getCharactersForAccount);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCharactersForAccount_request:GetCharactersForAccount_request;
		/**
		 * @see ICharacterServiceService#getCharactersForAccount_request_var
		 */
		[Bindable]
		public function get getCharactersForAccount_request_var():GetCharactersForAccount_request
		{
			return _getCharactersForAccount_request;
		}
		
		/**
		 * @private
		 */
		public function set getCharactersForAccount_request_var(request:GetCharactersForAccount_request):void
		{
			_getCharactersForAccount_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCharactersForAccount_lastResult:GetCharactersForAccountResponse;
		[Bindable]
		/**
		 * @see ICharacterServiceService#getCharactersForAccount_lastResult
		 */	  
		public function get getCharactersForAccount_lastResult():GetCharactersForAccountResponse
		{
			return _getCharactersForAccount_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCharactersForAccount_lastResult(lastResult:GetCharactersForAccountResponse):void
		{
			_getCharactersForAccount_lastResult = lastResult;
		}
		
		/**
		 * @see ICharacterServiceService#addgetCharactersForAccount()
		 */
		public function addgetCharactersForAccountEventListener(listener:Function):void
		{
			addEventListener(GetCharactersForAccountResultEvent.GetCharactersForAccount_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCharactersForAccount_populate_results(event:ResultEvent):void
		{
			var e:GetCharactersForAccountResultEvent = new GetCharactersForAccountResultEvent();
		            e.result = event.result as GetCharactersForAccountResponse;
		                       e.headers = event.headers;
		             getCharactersForAccount_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the addCharacter operation
          

        /**
         * @see ICharacterServiceService#addCharacter()
         */
        public function addCharacter(addCharacter:AddCharacter):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addCharacter(addCharacter);
            _internal_token.addEventListener("result",_addCharacter_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICharacterServiceService#addCharacter_send()
		 */    
        public function addCharacter_send():AsyncToken
        {
        	return addCharacter(_addCharacter_request.addCharacter);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addCharacter_request:AddCharacter_request;
		/**
		 * @see ICharacterServiceService#addCharacter_request_var
		 */
		[Bindable]
		public function get addCharacter_request_var():AddCharacter_request
		{
			return _addCharacter_request;
		}
		
		/**
		 * @private
		 */
		public function set addCharacter_request_var(request:AddCharacter_request):void
		{
			_addCharacter_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addCharacter_lastResult:AddCharacterResponse;
		[Bindable]
		/**
		 * @see ICharacterServiceService#addCharacter_lastResult
		 */	  
		public function get addCharacter_lastResult():AddCharacterResponse
		{
			return _addCharacter_lastResult;
		}
		/**
		 * @private
		 */
		public function set addCharacter_lastResult(lastResult:AddCharacterResponse):void
		{
			_addCharacter_lastResult = lastResult;
		}
		
		/**
		 * @see ICharacterServiceService#addaddCharacter()
		 */
		public function addaddCharacterEventListener(listener:Function):void
		{
			addEventListener(AddCharacterResultEvent.AddCharacter_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addCharacter_populate_results(event:ResultEvent):void
		{
			var e:AddCharacterResultEvent = new AddCharacterResultEvent();
		            e.result = event.result as AddCharacterResponse;
		                       e.headers = event.headers;
		             addCharacter_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the removeCharacterById operation
          

        /**
         * @see ICharacterServiceService#removeCharacterById()
         */
        public function removeCharacterById(removeCharacterById:RemoveCharacterById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removeCharacterById(removeCharacterById);
            _internal_token.addEventListener("result",_removeCharacterById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICharacterServiceService#removeCharacterById_send()
		 */    
        public function removeCharacterById_send():AsyncToken
        {
        	return removeCharacterById(_removeCharacterById_request.removeCharacterById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removeCharacterById_request:RemoveCharacterById_request;
		/**
		 * @see ICharacterServiceService#removeCharacterById_request_var
		 */
		[Bindable]
		public function get removeCharacterById_request_var():RemoveCharacterById_request
		{
			return _removeCharacterById_request;
		}
		
		/**
		 * @private
		 */
		public function set removeCharacterById_request_var(request:RemoveCharacterById_request):void
		{
			_removeCharacterById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removeCharacterById_lastResult:RemoveCharacterByIdResponse;
		[Bindable]
		/**
		 * @see ICharacterServiceService#removeCharacterById_lastResult
		 */	  
		public function get removeCharacterById_lastResult():RemoveCharacterByIdResponse
		{
			return _removeCharacterById_lastResult;
		}
		/**
		 * @private
		 */
		public function set removeCharacterById_lastResult(lastResult:RemoveCharacterByIdResponse):void
		{
			_removeCharacterById_lastResult = lastResult;
		}
		
		/**
		 * @see ICharacterServiceService#addremoveCharacterById()
		 */
		public function addremoveCharacterByIdEventListener(listener:Function):void
		{
			addEventListener(RemoveCharacterByIdResultEvent.RemoveCharacterById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removeCharacterById_populate_results(event:ResultEvent):void
		{
			var e:RemoveCharacterByIdResultEvent = new RemoveCharacterByIdResultEvent();
		            e.result = event.result as RemoveCharacterByIdResponse;
		                       e.headers = event.headers;
		             removeCharacterById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getCharacterById operation
          

        /**
         * @see ICharacterServiceService#getCharacterById()
         */
        public function getCharacterById(getCharacterById:GetCharacterById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCharacterById(getCharacterById);
            _internal_token.addEventListener("result",_getCharacterById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICharacterServiceService#getCharacterById_send()
		 */    
        public function getCharacterById_send():AsyncToken
        {
        	return getCharacterById(_getCharacterById_request.getCharacterById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCharacterById_request:GetCharacterById_request;
		/**
		 * @see ICharacterServiceService#getCharacterById_request_var
		 */
		[Bindable]
		public function get getCharacterById_request_var():GetCharacterById_request
		{
			return _getCharacterById_request;
		}
		
		/**
		 * @private
		 */
		public function set getCharacterById_request_var(request:GetCharacterById_request):void
		{
			_getCharacterById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCharacterById_lastResult:GetCharacterByIdResponse;
		[Bindable]
		/**
		 * @see ICharacterServiceService#getCharacterById_lastResult
		 */	  
		public function get getCharacterById_lastResult():GetCharacterByIdResponse
		{
			return _getCharacterById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCharacterById_lastResult(lastResult:GetCharacterByIdResponse):void
		{
			_getCharacterById_lastResult = lastResult;
		}
		
		/**
		 * @see ICharacterServiceService#addgetCharacterById()
		 */
		public function addgetCharacterByIdEventListener(listener:Function):void
		{
			addEventListener(GetCharacterByIdResultEvent.GetCharacterById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCharacterById_populate_results(event:ResultEvent):void
		{
			var e:GetCharacterByIdResultEvent = new GetCharacterByIdResultEvent();
		            e.result = event.result as GetCharacterByIdResponse;
		                       e.headers = event.headers;
		             getCharacterById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the updateCharacter operation
          

        /**
         * @see ICharacterServiceService#updateCharacter()
         */
        public function updateCharacter(updateCharacter:UpdateCharacter):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateCharacter(updateCharacter);
            _internal_token.addEventListener("result",_updateCharacter_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICharacterServiceService#updateCharacter_send()
		 */    
        public function updateCharacter_send():AsyncToken
        {
        	return updateCharacter(_updateCharacter_request.updateCharacter);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateCharacter_request:UpdateCharacter_request;
		/**
		 * @see ICharacterServiceService#updateCharacter_request_var
		 */
		[Bindable]
		public function get updateCharacter_request_var():UpdateCharacter_request
		{
			return _updateCharacter_request;
		}
		
		/**
		 * @private
		 */
		public function set updateCharacter_request_var(request:UpdateCharacter_request):void
		{
			_updateCharacter_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateCharacter_lastResult:UpdateCharacterResponse;
		[Bindable]
		/**
		 * @see ICharacterServiceService#updateCharacter_lastResult
		 */	  
		public function get updateCharacter_lastResult():UpdateCharacterResponse
		{
			return _updateCharacter_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateCharacter_lastResult(lastResult:UpdateCharacterResponse):void
		{
			_updateCharacter_lastResult = lastResult;
		}
		
		/**
		 * @see ICharacterServiceService#addupdateCharacter()
		 */
		public function addupdateCharacterEventListener(listener:Function):void
		{
			addEventListener(UpdateCharacterResultEvent.UpdateCharacter_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateCharacter_populate_results(event:ResultEvent):void
		{
			var e:UpdateCharacterResultEvent = new UpdateCharacterResultEvent();
		            e.result = event.result as UpdateCharacterResponse;
		                       e.headers = event.headers;
		             updateCharacter_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see ICharacterServiceService#getWebService()
		 */
		public function getWebService():BaseCharacterServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addCharacterServiceServiceFaultEventListener(listener:Function):void
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
