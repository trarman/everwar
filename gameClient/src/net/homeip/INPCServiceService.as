
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface INPCServiceService
    {
    	//Stub functions for the getNPCById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getNPCById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function getNPCById(getNPCById:GetNPCById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getNPCById_send():AsyncToken;
        
        /**
         * The getNPCById operation lastResult property
         */
        function get getNPCById_lastResult():GetNPCByIdResponse;
		/**
		 * @private
		 */
        function set getNPCById_lastResult(lastResult:GetNPCByIdResponse):void;
       /**
        * Add a listener for the getNPCById operation successful result event
        * @param The listener function
        */
       function addgetNPCByIdEventListener(listener:Function):void;
       
       
        /**
         * The getNPCById operation request wrapper
         */
        function get getNPCById_request_var():GetNPCById_request;
        
        /**
         * @private
         */
        function set getNPCById_request_var(request:GetNPCById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseNPCServiceService;
	}
}