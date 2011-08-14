
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.beacon.tiles{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ITileServiceService
    {
    	//Stub functions for the addTile operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param addTile
    	 * @param name
    	 * @param categoryId
    	 * @param imageData
    	 * @return An AsyncToken
    	 */
    	function addTile(addTile:AddTile):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addTile_send():AsyncToken;
        
        /**
         * The addTile operation lastResult property
         */
        function get addTile_lastResult():AddTileResponse;
		/**
		 * @private
		 */
        function set addTile_lastResult(lastResult:AddTileResponse):void;
       /**
        * Add a listener for the addTile operation successful result event
        * @param The listener function
        */
       function addaddTileEventListener(listener:Function):void;
       
       
        /**
         * The addTile operation request wrapper
         */
        function get addTile_request_var():AddTile_request;
        
        /**
         * @private
         */
        function set addTile_request_var(request:AddTile_request):void;
                   
    	//Stub functions for the getTilesByCategoryId operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getTilesByCategoryId
    	 * @param categoryId
    	 * @return An AsyncToken
    	 */
    	function getTilesByCategoryId(getTilesByCategoryId:GetTilesByCategoryId):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getTilesByCategoryId_send():AsyncToken;
        
        /**
         * The getTilesByCategoryId operation lastResult property
         */
        function get getTilesByCategoryId_lastResult():GetTilesByCategoryIdResponse;
		/**
		 * @private
		 */
        function set getTilesByCategoryId_lastResult(lastResult:GetTilesByCategoryIdResponse):void;
       /**
        * Add a listener for the getTilesByCategoryId operation successful result event
        * @param The listener function
        */
       function addgetTilesByCategoryIdEventListener(listener:Function):void;
       
       
        /**
         * The getTilesByCategoryId operation request wrapper
         */
        function get getTilesByCategoryId_request_var():GetTilesByCategoryId_request;
        
        /**
         * @private
         */
        function set getTilesByCategoryId_request_var(request:GetTilesByCategoryId_request):void;
                   
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
                   
    	//Stub functions for the updateTileById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param id
    	 * @param name
    	 * @param categoryId
    	 * @param imageData
    	 * @param updateTileById
    	 * @return An AsyncToken
    	 */
    	function updateTileById(updateTileById:UpdateTileById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateTileById_send():AsyncToken;
        
        /**
         * The updateTileById operation lastResult property
         */
        function get updateTileById_lastResult():UpdateTileByIdResponse;
		/**
		 * @private
		 */
        function set updateTileById_lastResult(lastResult:UpdateTileByIdResponse):void;
       /**
        * Add a listener for the updateTileById operation successful result event
        * @param The listener function
        */
       function addupdateTileByIdEventListener(listener:Function):void;
       
       
        /**
         * The updateTileById operation request wrapper
         */
        function get updateTileById_request_var():UpdateTileById_request;
        
        /**
         * @private
         */
        function set updateTileById_request_var(request:UpdateTileById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseTileServiceService;
	}
}