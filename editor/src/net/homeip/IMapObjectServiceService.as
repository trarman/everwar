
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IMapObjectServiceService
    {
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
                   
    	//Stub functions for the updateMapObject operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param mapObject
    	 * @param updateMapObject
    	 * @return An AsyncToken
    	 */
    	function updateMapObject(updateMapObject:UpdateMapObject):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateMapObject_send():AsyncToken;
        
        /**
         * The updateMapObject operation lastResult property
         */
        function get updateMapObject_lastResult():UpdateMapObjectResponse;
		/**
		 * @private
		 */
        function set updateMapObject_lastResult(lastResult:UpdateMapObjectResponse):void;
       /**
        * Add a listener for the updateMapObject operation successful result event
        * @param The listener function
        */
       function addupdateMapObjectEventListener(listener:Function):void;
       
       
        /**
         * The updateMapObject operation request wrapper
         */
        function get updateMapObject_request_var():UpdateMapObject_request;
        
        /**
         * @private
         */
        function set updateMapObject_request_var(request:UpdateMapObject_request):void;
                   
    	//Stub functions for the removeMapObjectById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param mapObjectId
    	 * @param removeMapObjectById
    	 * @return An AsyncToken
    	 */
    	function removeMapObjectById(removeMapObjectById:RemoveMapObjectById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removeMapObjectById_send():AsyncToken;
        
        /**
         * The removeMapObjectById operation lastResult property
         */
        function get removeMapObjectById_lastResult():RemoveMapObjectByIdResponse;
		/**
		 * @private
		 */
        function set removeMapObjectById_lastResult(lastResult:RemoveMapObjectByIdResponse):void;
       /**
        * Add a listener for the removeMapObjectById operation successful result event
        * @param The listener function
        */
       function addremoveMapObjectByIdEventListener(listener:Function):void;
       
       
        /**
         * The removeMapObjectById operation request wrapper
         */
        function get removeMapObjectById_request_var():RemoveMapObjectById_request;
        
        /**
         * @private
         */
        function set removeMapObjectById_request_var(request:RemoveMapObjectById_request):void;
                   
    	//Stub functions for the addMapObject operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param mapObject
    	 * @param addMapObject
    	 * @return An AsyncToken
    	 */
    	function addMapObject(addMapObject:AddMapObject):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addMapObject_send():AsyncToken;
        
        /**
         * The addMapObject operation lastResult property
         */
        function get addMapObject_lastResult():AddMapObjectResponse;
		/**
		 * @private
		 */
        function set addMapObject_lastResult(lastResult:AddMapObjectResponse):void;
       /**
        * Add a listener for the addMapObject operation successful result event
        * @param The listener function
        */
       function addaddMapObjectEventListener(listener:Function):void;
       
       
        /**
         * The addMapObject operation request wrapper
         */
        function get addMapObject_request_var():AddMapObject_request;
        
        /**
         * @private
         */
        function set addMapObject_request_var(request:AddMapObject_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseMapObjectServiceService;
	}
}