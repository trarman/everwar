
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.beacon.categories{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ICategoryServiceService
    {
    	//Stub functions for the getCategories operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getCategories
    	 * @return An AsyncToken
    	 */
    	function getCategories(getCategories:GetCategories):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCategories_send():AsyncToken;
        
        /**
         * The getCategories operation lastResult property
         */
        function get getCategories_lastResult():GetCategoriesResponse;
		/**
		 * @private
		 */
        function set getCategories_lastResult(lastResult:GetCategoriesResponse):void;
       /**
        * Add a listener for the getCategories operation successful result event
        * @param The listener function
        */
       function addgetCategoriesEventListener(listener:Function):void;
       
       
        /**
         * The getCategories operation request wrapper
         */
        function get getCategories_request_var():GetCategories_request;
        
        /**
         * @private
         */
        function set getCategories_request_var(request:GetCategories_request):void;
                   
    	//Stub functions for the addCategory operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param parentId
    	 * @param name
    	 * @param addCategory
    	 * @return An AsyncToken
    	 */
    	function addCategory(addCategory:AddCategory):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addCategory_send():AsyncToken;
        
        /**
         * The addCategory operation lastResult property
         */
        function get addCategory_lastResult():AddCategoryResponse;
		/**
		 * @private
		 */
        function set addCategory_lastResult(lastResult:AddCategoryResponse):void;
       /**
        * Add a listener for the addCategory operation successful result event
        * @param The listener function
        */
       function addaddCategoryEventListener(listener:Function):void;
       
       
        /**
         * The addCategory operation request wrapper
         */
        function get addCategory_request_var():AddCategory_request;
        
        /**
         * @private
         */
        function set addCategory_request_var(request:AddCategory_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseCategoryServiceService;
	}
}