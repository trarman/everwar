/**
 * CategoryServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:CategoryServiceService= new CategoryServiceService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetCategoriesEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getCategories(mygetCategories);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.beacon.categories.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:CategoryServiceService id="myService">
  *   <srv:getCategories_request_var>
  *		<srv:GetCategories_request getCategories=myValue/>
  *   </srv:getCategories_request_var>
  * </srv:CategoryServiceService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getCategories_send()" />
  */
package com.beacon.categories
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getCategories completes with success
     * and returns some data
     * @eventType GetCategoriesResultEvent
     */
    [Event(name="GetCategories_result", type="com.beacon.categories.GetCategoriesResultEvent")]
    
    /**
     * Dispatches when a call to the operation addCategory completes with success
     * and returns some data
     * @eventType AddCategoryResultEvent
     */
    [Event(name="AddCategory_result", type="com.beacon.categories.AddCategoryResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class CategoryServiceService extends EventDispatcher implements ICategoryServiceService
	{
    	private var _baseService:BaseCategoryServiceService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function CategoryServiceService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseCategoryServiceService(destination,rootURL);
        }
        
		//stub functions for the getCategories operation
          

        /**
         * @see ICategoryServiceService#getCategories()
         */
        public function getCategories(getCategories:GetCategories):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCategories(getCategories);
            _internal_token.addEventListener("result",_getCategories_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICategoryServiceService#getCategories_send()
		 */    
        public function getCategories_send():AsyncToken
        {
        	return getCategories(_getCategories_request.getCategories);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCategories_request:GetCategories_request;
		/**
		 * @see ICategoryServiceService#getCategories_request_var
		 */
		[Bindable]
		public function get getCategories_request_var():GetCategories_request
		{
			return _getCategories_request;
		}
		
		/**
		 * @private
		 */
		public function set getCategories_request_var(request:GetCategories_request):void
		{
			_getCategories_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCategories_lastResult:GetCategoriesResponse;
		[Bindable]
		/**
		 * @see ICategoryServiceService#getCategories_lastResult
		 */	  
		public function get getCategories_lastResult():GetCategoriesResponse
		{
			return _getCategories_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCategories_lastResult(lastResult:GetCategoriesResponse):void
		{
			_getCategories_lastResult = lastResult;
		}
		
		/**
		 * @see ICategoryServiceService#addgetCategories()
		 */
		public function addgetCategoriesEventListener(listener:Function):void
		{
			addEventListener(GetCategoriesResultEvent.GetCategories_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCategories_populate_results(event:ResultEvent):void
		{
			var e:GetCategoriesResultEvent = new GetCategoriesResultEvent();
		            e.result = event.result as GetCategoriesResponse;
		                       e.headers = event.headers;
		             getCategories_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the addCategory operation
          

        /**
         * @see ICategoryServiceService#addCategory()
         */
        public function addCategory(addCategory:AddCategory):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addCategory(addCategory);
            _internal_token.addEventListener("result",_addCategory_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICategoryServiceService#addCategory_send()
		 */    
        public function addCategory_send():AsyncToken
        {
        	return addCategory(_addCategory_request.addCategory);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addCategory_request:AddCategory_request;
		/**
		 * @see ICategoryServiceService#addCategory_request_var
		 */
		[Bindable]
		public function get addCategory_request_var():AddCategory_request
		{
			return _addCategory_request;
		}
		
		/**
		 * @private
		 */
		public function set addCategory_request_var(request:AddCategory_request):void
		{
			_addCategory_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addCategory_lastResult:AddCategoryResponse;
		[Bindable]
		/**
		 * @see ICategoryServiceService#addCategory_lastResult
		 */	  
		public function get addCategory_lastResult():AddCategoryResponse
		{
			return _addCategory_lastResult;
		}
		/**
		 * @private
		 */
		public function set addCategory_lastResult(lastResult:AddCategoryResponse):void
		{
			_addCategory_lastResult = lastResult;
		}
		
		/**
		 * @see ICategoryServiceService#addaddCategory()
		 */
		public function addaddCategoryEventListener(listener:Function):void
		{
			addEventListener(AddCategoryResultEvent.AddCategory_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addCategory_populate_results(event:ResultEvent):void
		{
			var e:AddCategoryResultEvent = new AddCategoryResultEvent();
		            e.result = event.result as AddCategoryResponse;
		                       e.headers = event.headers;
		             addCategory_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see ICategoryServiceService#getWebService()
		 */
		public function getWebService():BaseCategoryServiceService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addCategoryServiceServiceFaultEventListener(listener:Function):void
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
