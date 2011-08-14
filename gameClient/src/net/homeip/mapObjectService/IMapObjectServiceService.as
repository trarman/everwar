
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip.mapObjectService{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IMapObjectServiceService
    {
    	//Stub functions for the getMapObjectById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getMapObjectById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function getMapObjectById(getMapObjectById:GetMapObjectById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getMapObjectById_send():AsyncToken;
        
        /**
         * The getMapObjectById operation lastResult property
         */
        function get getMapObjectById_lastResult():GetMapObjectByIdResponse;
		/**
		 * @private
		 */
        function set getMapObjectById_lastResult(lastResult:GetMapObjectByIdResponse):void;
       /**
        * Add a listener for the getMapObjectById operation successful result event
        * @param The listener function
        */
       function addgetMapObjectByIdEventListener(listener:Function):void;
       
       
        /**
         * The getMapObjectById operation request wrapper
         */
        function get getMapObjectById_request_var():GetMapObjectById_request;
        
        /**
         * @private
         */
        function set getMapObjectById_request_var(request:GetMapObjectById_request):void;
                   
    	//Stub functions for the getMapObjectsForZoneId operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getMapObjectsForZoneId
    	 * @param zoneId
    	 * @return An AsyncToken
    	 */
    	function getMapObjectsForZoneId(getMapObjectsForZoneId:GetMapObjectsForZoneId):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getMapObjectsForZoneId_send():AsyncToken;
        
        /**
         * The getMapObjectsForZoneId operation lastResult property
         */
        function get getMapObjectsForZoneId_lastResult():GetMapObjectsForZoneIdResponse;
		/**
		 * @private
		 */
        function set getMapObjectsForZoneId_lastResult(lastResult:GetMapObjectsForZoneIdResponse):void;
       /**
        * Add a listener for the getMapObjectsForZoneId operation successful result event
        * @param The listener function
        */
       function addgetMapObjectsForZoneIdEventListener(listener:Function):void;
       
       
        /**
         * The getMapObjectsForZoneId operation request wrapper
         */
        function get getMapObjectsForZoneId_request_var():GetMapObjectsForZoneId_request;
        
        /**
         * @private
         */
        function set getMapObjectsForZoneId_request_var(request:GetMapObjectsForZoneId_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseMapObjectServiceService;
	}
}