
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
    	//Stub functions for the removeExitById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param removeExitById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function removeExitById(removeExitById:RemoveExitById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removeExitById_send():AsyncToken;
        
        /**
         * The removeExitById operation lastResult property
         */
        function get removeExitById_lastResult():RemoveExitByIdResponse;
		/**
		 * @private
		 */
        function set removeExitById_lastResult(lastResult:RemoveExitByIdResponse):void;
       /**
        * Add a listener for the removeExitById operation successful result event
        * @param The listener function
        */
       function addremoveExitByIdEventListener(listener:Function):void;
       
       
        /**
         * The removeExitById operation request wrapper
         */
        function get removeExitById_request_var():RemoveExitById_request;
        
        /**
         * @private
         */
        function set removeExitById_request_var(request:RemoveExitById_request):void;
                   
    	//Stub functions for the updateExit operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param exit
    	 * @param updateExit
    	 * @return An AsyncToken
    	 */
    	function updateExit(updateExit:UpdateExit):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateExit_send():AsyncToken;
        
        /**
         * The updateExit operation lastResult property
         */
        function get updateExit_lastResult():UpdateExitResponse;
		/**
		 * @private
		 */
        function set updateExit_lastResult(lastResult:UpdateExitResponse):void;
       /**
        * Add a listener for the updateExit operation successful result event
        * @param The listener function
        */
       function addupdateExitEventListener(listener:Function):void;
       
       
        /**
         * The updateExit operation request wrapper
         */
        function get updateExit_request_var():UpdateExit_request;
        
        /**
         * @private
         */
        function set updateExit_request_var(request:UpdateExit_request):void;
                   
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
                   
    	//Stub functions for the addExit operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param exit
    	 * @param addExit
    	 * @return An AsyncToken
    	 */
    	function addExit(addExit:AddExit):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addExit_send():AsyncToken;
        
        /**
         * The addExit operation lastResult property
         */
        function get addExit_lastResult():AddExitResponse;
		/**
		 * @private
		 */
        function set addExit_lastResult(lastResult:AddExitResponse):void;
       /**
        * Add a listener for the addExit operation successful result event
        * @param The listener function
        */
       function addaddExitEventListener(listener:Function):void;
       
       
        /**
         * The addExit operation request wrapper
         */
        function get addExit_request_var():AddExit_request;
        
        /**
         * @private
         */
        function set addExit_request_var(request:AddExit_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseExitServiceService;
	}
}