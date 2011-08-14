
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ICharacterServiceService
    {
    	//Stub functions for the getCharactersForAccount operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getCharactersForAccount
    	 * @param account
    	 * @return An AsyncToken
    	 */
    	function getCharactersForAccount(getCharactersForAccount:GetCharactersForAccount):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCharactersForAccount_send():AsyncToken;
        
        /**
         * The getCharactersForAccount operation lastResult property
         */
        function get getCharactersForAccount_lastResult():GetCharactersForAccountResponse;
		/**
		 * @private
		 */
        function set getCharactersForAccount_lastResult(lastResult:GetCharactersForAccountResponse):void;
       /**
        * Add a listener for the getCharactersForAccount operation successful result event
        * @param The listener function
        */
       function addgetCharactersForAccountEventListener(listener:Function):void;
       
       
        /**
         * The getCharactersForAccount operation request wrapper
         */
        function get getCharactersForAccount_request_var():GetCharactersForAccount_request;
        
        /**
         * @private
         */
        function set getCharactersForAccount_request_var(request:GetCharactersForAccount_request):void;
                   
    	//Stub functions for the addCharacter operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param addCharacter
    	 * @param character
    	 * @return An AsyncToken
    	 */
    	function addCharacter(addCharacter:AddCharacter):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addCharacter_send():AsyncToken;
        
        /**
         * The addCharacter operation lastResult property
         */
        function get addCharacter_lastResult():AddCharacterResponse;
		/**
		 * @private
		 */
        function set addCharacter_lastResult(lastResult:AddCharacterResponse):void;
       /**
        * Add a listener for the addCharacter operation successful result event
        * @param The listener function
        */
       function addaddCharacterEventListener(listener:Function):void;
       
       
        /**
         * The addCharacter operation request wrapper
         */
        function get addCharacter_request_var():AddCharacter_request;
        
        /**
         * @private
         */
        function set addCharacter_request_var(request:AddCharacter_request):void;
                   
    	//Stub functions for the removeCharacterById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param id
    	 * @param removeCharacterById
    	 * @return An AsyncToken
    	 */
    	function removeCharacterById(removeCharacterById:RemoveCharacterById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removeCharacterById_send():AsyncToken;
        
        /**
         * The removeCharacterById operation lastResult property
         */
        function get removeCharacterById_lastResult():RemoveCharacterByIdResponse;
		/**
		 * @private
		 */
        function set removeCharacterById_lastResult(lastResult:RemoveCharacterByIdResponse):void;
       /**
        * Add a listener for the removeCharacterById operation successful result event
        * @param The listener function
        */
       function addremoveCharacterByIdEventListener(listener:Function):void;
       
       
        /**
         * The removeCharacterById operation request wrapper
         */
        function get removeCharacterById_request_var():RemoveCharacterById_request;
        
        /**
         * @private
         */
        function set removeCharacterById_request_var(request:RemoveCharacterById_request):void;
                   
    	//Stub functions for the getCharacterById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param id
    	 * @param getCharacterById
    	 * @return An AsyncToken
    	 */
    	function getCharacterById(getCharacterById:GetCharacterById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCharacterById_send():AsyncToken;
        
        /**
         * The getCharacterById operation lastResult property
         */
        function get getCharacterById_lastResult():GetCharacterByIdResponse;
		/**
		 * @private
		 */
        function set getCharacterById_lastResult(lastResult:GetCharacterByIdResponse):void;
       /**
        * Add a listener for the getCharacterById operation successful result event
        * @param The listener function
        */
       function addgetCharacterByIdEventListener(listener:Function):void;
       
       
        /**
         * The getCharacterById operation request wrapper
         */
        function get getCharacterById_request_var():GetCharacterById_request;
        
        /**
         * @private
         */
        function set getCharacterById_request_var(request:GetCharacterById_request):void;
                   
    	//Stub functions for the updateCharacter operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param updateCharacter
    	 * @param character
    	 * @return An AsyncToken
    	 */
    	function updateCharacter(updateCharacter:UpdateCharacter):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateCharacter_send():AsyncToken;
        
        /**
         * The updateCharacter operation lastResult property
         */
        function get updateCharacter_lastResult():UpdateCharacterResponse;
		/**
		 * @private
		 */
        function set updateCharacter_lastResult(lastResult:UpdateCharacterResponse):void;
       /**
        * Add a listener for the updateCharacter operation successful result event
        * @param The listener function
        */
       function addupdateCharacterEventListener(listener:Function):void;
       
       
        /**
         * The updateCharacter operation request wrapper
         */
        function get updateCharacter_request_var():UpdateCharacter_request;
        
        /**
         * @private
         */
        function set updateCharacter_request_var(request:UpdateCharacter_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseCharacterServiceService;
	}
}