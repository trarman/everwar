
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
    	//Stub functions for the saveConversationExchange operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param exchange
    	 * @param saveConversationExchange
    	 * @return An AsyncToken
    	 */
    	function saveConversationExchange(saveConversationExchange:SaveConversationExchange):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function saveConversationExchange_send():AsyncToken;
        
        /**
         * The saveConversationExchange operation lastResult property
         */
        function get saveConversationExchange_lastResult():SaveConversationExchangeResponse;
		/**
		 * @private
		 */
        function set saveConversationExchange_lastResult(lastResult:SaveConversationExchangeResponse):void;
       /**
        * Add a listener for the saveConversationExchange operation successful result event
        * @param The listener function
        */
       function addsaveConversationExchangeEventListener(listener:Function):void;
       
       
        /**
         * The saveConversationExchange operation request wrapper
         */
        function get saveConversationExchange_request_var():SaveConversationExchange_request;
        
        /**
         * @private
         */
        function set saveConversationExchange_request_var(request:SaveConversationExchange_request):void;
                   
    	//Stub functions for the getConversationStarters operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getConversationStarters
    	 * @return An AsyncToken
    	 */
    	function getConversationStarters(getConversationStarters:GetConversationStarters):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getConversationStarters_send():AsyncToken;
        
        /**
         * The getConversationStarters operation lastResult property
         */
        function get getConversationStarters_lastResult():GetConversationStartersResponse;
		/**
		 * @private
		 */
        function set getConversationStarters_lastResult(lastResult:GetConversationStartersResponse):void;
       /**
        * Add a listener for the getConversationStarters operation successful result event
        * @param The listener function
        */
       function addgetConversationStartersEventListener(listener:Function):void;
       
       
        /**
         * The getConversationStarters operation request wrapper
         */
        function get getConversationStarters_request_var():GetConversationStarters_request;
        
        /**
         * @private
         */
        function set getConversationStarters_request_var(request:GetConversationStarters_request):void;
                   
    	//Stub functions for the saveConversationAnswer operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param answer
    	 * @param saveConversationAnswer
    	 * @return An AsyncToken
    	 */
    	function saveConversationAnswer(saveConversationAnswer:SaveConversationAnswer):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function saveConversationAnswer_send():AsyncToken;
        
        /**
         * The saveConversationAnswer operation lastResult property
         */
        function get saveConversationAnswer_lastResult():SaveConversationAnswerResponse;
		/**
		 * @private
		 */
        function set saveConversationAnswer_lastResult(lastResult:SaveConversationAnswerResponse):void;
       /**
        * Add a listener for the saveConversationAnswer operation successful result event
        * @param The listener function
        */
       function addsaveConversationAnswerEventListener(listener:Function):void;
       
       
        /**
         * The saveConversationAnswer operation request wrapper
         */
        function get saveConversationAnswer_request_var():SaveConversationAnswer_request;
        
        /**
         * @private
         */
        function set saveConversationAnswer_request_var(request:SaveConversationAnswer_request):void;
                   
    	//Stub functions for the removeConversationById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param removeConversationById
    	 * @param id
    	 * @return An AsyncToken
    	 */
    	function removeConversationById(removeConversationById:RemoveConversationById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removeConversationById_send():AsyncToken;
        
        /**
         * The removeConversationById operation lastResult property
         */
        function get removeConversationById_lastResult():RemoveConversationByIdResponse;
		/**
		 * @private
		 */
        function set removeConversationById_lastResult(lastResult:RemoveConversationByIdResponse):void;
       /**
        * Add a listener for the removeConversationById operation successful result event
        * @param The listener function
        */
       function addremoveConversationByIdEventListener(listener:Function):void;
       
       
        /**
         * The removeConversationById operation request wrapper
         */
        function get removeConversationById_request_var():RemoveConversationById_request;
        
        /**
         * @private
         */
        function set removeConversationById_request_var(request:RemoveConversationById_request):void;
                   
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