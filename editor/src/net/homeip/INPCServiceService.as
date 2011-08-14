
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
    	//Stub functions for the removeNPCById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param removeNPCById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function removeNPCById(removeNPCById:RemoveNPCById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removeNPCById_send():AsyncToken;
        
        /**
         * The removeNPCById operation lastResult property
         */
        function get removeNPCById_lastResult():RemoveNPCByIdResponse;
		/**
		 * @private
		 */
        function set removeNPCById_lastResult(lastResult:RemoveNPCByIdResponse):void;
       /**
        * Add a listener for the removeNPCById operation successful result event
        * @param The listener function
        */
       function addremoveNPCByIdEventListener(listener:Function):void;
       
       
        /**
         * The removeNPCById operation request wrapper
         */
        function get removeNPCById_request_var():RemoveNPCById_request;
        
        /**
         * @private
         */
        function set removeNPCById_request_var(request:RemoveNPCById_request):void;
                   
    	//Stub functions for the addNPC operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param npc
    	 * @param addNPC
    	 * @return An AsyncToken
    	 */
    	function addNPC(addNPC:AddNPC):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addNPC_send():AsyncToken;
        
        /**
         * The addNPC operation lastResult property
         */
        function get addNPC_lastResult():AddNPCResponse;
		/**
		 * @private
		 */
        function set addNPC_lastResult(lastResult:AddNPCResponse):void;
       /**
        * Add a listener for the addNPC operation successful result event
        * @param The listener function
        */
       function addaddNPCEventListener(listener:Function):void;
       
       
        /**
         * The addNPC operation request wrapper
         */
        function get addNPC_request_var():AddNPC_request;
        
        /**
         * @private
         */
        function set addNPC_request_var(request:AddNPC_request):void;
                   
    	//Stub functions for the getNPCList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getNPCList
    	 * @return An AsyncToken
    	 */
    	function getNPCList(getNPCList:GetNPCList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getNPCList_send():AsyncToken;
        
        /**
         * The getNPCList operation lastResult property
         */
        function get getNPCList_lastResult():GetNPCListResponse;
		/**
		 * @private
		 */
        function set getNPCList_lastResult(lastResult:GetNPCListResponse):void;
       /**
        * Add a listener for the getNPCList operation successful result event
        * @param The listener function
        */
       function addgetNPCListEventListener(listener:Function):void;
       
       
        /**
         * The getNPCList operation request wrapper
         */
        function get getNPCList_request_var():GetNPCList_request;
        
        /**
         * @private
         */
        function set getNPCList_request_var(request:GetNPCList_request):void;
                   
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
                   
    	//Stub functions for the updateNPC operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param npc
    	 * @param updateNPC
    	 * @return An AsyncToken
    	 */
    	function updateNPC(updateNPC:UpdateNPC):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateNPC_send():AsyncToken;
        
        /**
         * The updateNPC operation lastResult property
         */
        function get updateNPC_lastResult():UpdateNPCResponse;
		/**
		 * @private
		 */
        function set updateNPC_lastResult(lastResult:UpdateNPCResponse):void;
       /**
        * Add a listener for the updateNPC operation successful result event
        * @param The listener function
        */
       function addupdateNPCEventListener(listener:Function):void;
       
       
        /**
         * The updateNPC operation request wrapper
         */
        function get updateNPC_request_var():UpdateNPC_request;
        
        /**
         * @private
         */
        function set updateNPC_request_var(request:UpdateNPC_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseNPCServiceService;
	}
}