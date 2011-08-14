
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IExitServiceService
    {
    	//Stub functions for the getExitById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getExitById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function getExitById(getExitById:GetExitById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getExitById_send():AsyncToken;
        
        /**
         * The getExitById operation lastResult property
         */
        function get getExitById_lastResult():GetExitByIdResponse;
		/**
		 * @private
		 */
        function set getExitById_lastResult(lastResult:GetExitByIdResponse):void;
       /**
        * Add a listener for the getExitById operation successful result event
        * @param The listener function
        */
       function addgetExitByIdEventListener(listener:Function):void;
       
       
        /**
         * The getExitById operation request wrapper
         */
        function get getExitById_request_var():GetExitById_request;
        
        /**
         * @private
         */
        function set getExitById_request_var(request:GetExitById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseExitServiceService;
	}
}