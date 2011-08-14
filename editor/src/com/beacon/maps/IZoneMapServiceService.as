
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.beacon.maps{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IZoneMapServiceService
    {
    	//Stub functions for the getZoneMapById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getZoneMapById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function getZoneMapById(getZoneMapById:GetZoneMapById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getZoneMapById_send():AsyncToken;
        
        /**
         * The getZoneMapById operation lastResult property
         */
        function get getZoneMapById_lastResult():GetZoneMapByIdResponse;
		/**
		 * @private
		 */
        function set getZoneMapById_lastResult(lastResult:GetZoneMapByIdResponse):void;
       /**
        * Add a listener for the getZoneMapById operation successful result event
        * @param The listener function
        */
       function addgetZoneMapByIdEventListener(listener:Function):void;
       
       
        /**
         * The getZoneMapById operation request wrapper
         */
        function get getZoneMapById_request_var():GetZoneMapById_request;
        
        /**
         * @private
         */
        function set getZoneMapById_request_var(request:GetZoneMapById_request):void;
                   
    	//Stub functions for the getZones operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getZones
    	 * @return An AsyncToken
    	 */
    	function getZones(getZones:GetZones):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getZones_send():AsyncToken;
        
        /**
         * The getZones operation lastResult property
         */
        function get getZones_lastResult():GetZonesResponse;
		/**
		 * @private
		 */
        function set getZones_lastResult(lastResult:GetZonesResponse):void;
       /**
        * Add a listener for the getZones operation successful result event
        * @param The listener function
        */
       function addgetZonesEventListener(listener:Function):void;
       
       
        /**
         * The getZones operation request wrapper
         */
        function get getZones_request_var():GetZones_request;
        
        /**
         * @private
         */
        function set getZones_request_var(request:GetZones_request):void;
                   
    	//Stub functions for the addZoneMap operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param name
    	 * @param width
    	 * @param height
    	 * @param music
    	 * @param mapData
    	 * @param addZoneMap
    	 * @return An AsyncToken
    	 */
    	function addZoneMap(addZoneMap:AddZoneMap):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addZoneMap_send():AsyncToken;
        
        /**
         * The addZoneMap operation lastResult property
         */
        function get addZoneMap_lastResult():AddZoneMapResponse;
		/**
		 * @private
		 */
        function set addZoneMap_lastResult(lastResult:AddZoneMapResponse):void;
       /**
        * Add a listener for the addZoneMap operation successful result event
        * @param The listener function
        */
       function addaddZoneMapEventListener(listener:Function):void;
       
       
        /**
         * The addZoneMap operation request wrapper
         */
        function get addZoneMap_request_var():AddZoneMap_request;
        
        /**
         * @private
         */
        function set addZoneMap_request_var(request:AddZoneMap_request):void;
                   
    	//Stub functions for the updateZoneMapById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param updateZoneMapById
    	 * @param id
    	 * @param name
    	 * @param width
    	 * @param height
    	 * @param music
    	 * @param mapData
    	 * @return An AsyncToken
    	 */
    	function updateZoneMapById(updateZoneMapById:UpdateZoneMapById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateZoneMapById_send():AsyncToken;
        
        /**
         * The updateZoneMapById operation lastResult property
         */
        function get updateZoneMapById_lastResult():UpdateZoneMapByIdResponse;
		/**
		 * @private
		 */
        function set updateZoneMapById_lastResult(lastResult:UpdateZoneMapByIdResponse):void;
       /**
        * Add a listener for the updateZoneMapById operation successful result event
        * @param The listener function
        */
       function addupdateZoneMapByIdEventListener(listener:Function):void;
       
       
        /**
         * The updateZoneMapById operation request wrapper
         */
        function get updateZoneMapById_request_var():UpdateZoneMapById_request;
        
        /**
         * @private
         */
        function set updateZoneMapById_request_var(request:UpdateZoneMapById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseZoneMapServiceService;
	}
}