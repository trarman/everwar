
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ITileServiceService
    {
    	//Stub functions for the getTileById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param tileId
    	 * @param getTileById
    	 * @return An AsyncToken
    	 */
    	function getTileById(getTileById:GetTileById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getTileById_send():AsyncToken;
        
        /**
         * The getTileById operation lastResult property
         */
        function get getTileById_lastResult():GetTileByIdResponse;
		/**
		 * @private
		 */
        function set getTileById_lastResult(lastResult:GetTileByIdResponse):void;
       /**
        * Add a listener for the getTileById operation successful result event
        * @param The listener function
        */
       function addgetTileByIdEventListener(listener:Function):void;
       
       
        /**
         * The getTileById operation request wrapper
         */
        function get getTileById_request_var():GetTileById_request;
        
        /**
         * @private
         */
        function set getTileById_request_var(request:GetTileById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseTileServiceService;
	}
}