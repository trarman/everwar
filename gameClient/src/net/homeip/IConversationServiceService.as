
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IConversationServiceService
    {
    	//Stub functions for the getConversationById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param id
    	 * @param getConversationById
    	 * @return An AsyncToken
    	 */
    	function getConversationById(getConversationById:GetConversationById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getConversationById_send():AsyncToken;
        
        /**
         * The getConversationById operation lastResult property
         */
        function get getConversationById_lastResult():GetConversationByIdResponse;
		/**
		 * @private
		 */
        function set getConversationById_lastResult(lastResult:GetConversationByIdResponse):void;
       /**
        * Add a listener for the getConversationById operation successful result event
        * @param The listener function
        */
       function addgetConversationByIdEventListener(listener:Function):void;
       
       
        /**
         * The getConversationById operation request wrapper
         */
        function get getConversationById_request_var():GetConversationById_request;
        
        /**
         * @private
         */
        function set getConversationById_request_var(request:GetConversationById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseConversationServiceService;
	}
}