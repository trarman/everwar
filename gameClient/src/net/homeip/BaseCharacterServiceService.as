/**
 * BaseCharacterServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseCharacterServiceService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseCharacterServiceServiceService:WSDLService;
		private var BaseCharacterServiceServicePortType:WSDLPortType;
		private var BaseCharacterServiceServiceBinding:WSDLBinding;
		private var BaseCharacterServiceServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseCharacterServiceServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseCharacterServiceService(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseCharacterServiceServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseCharacterServiceServiceService = new WSDLService("BaseCharacterServiceServiceService");
			BaseCharacterServiceServicePort = new WSDLPort("BaseCharacterServiceServicePort",BaseCharacterServiceServiceService);
        	BaseCharacterServiceServiceBinding = new WSDLBinding("BaseCharacterServiceServiceBinding");
	        BaseCharacterServiceServicePortType = new WSDLPortType("BaseCharacterServiceServicePortType");
       		BaseCharacterServiceServiceBinding.portType = BaseCharacterServiceServicePortType;
       		BaseCharacterServiceServicePort.binding = BaseCharacterServiceServiceBinding;
       		BaseCharacterServiceServiceService.addPort(BaseCharacterServiceServicePort);
       		BaseCharacterServiceServicePort.endpointURI = "http://darkshade.homeip.net/rpgEditorServer/characters";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseCharacterServiceServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getCharactersForAccount:WSDLOperation = new WSDLOperation("getCharactersForAccount");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getCharactersForAccount");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","getCharactersForAccount"),null,new QName("http://character.ws.rpg.beacon.com/","getCharactersForAccount")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getCharactersForAccountResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","getCharactersForAccountResponse"),null,new QName("http://character.ws.rpg.beacon.com/","getCharactersForAccountResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getCharactersForAccount.inputMessage = requestMessage;
	        getCharactersForAccount.outputMessage = responseMessage;
            getCharactersForAccount.schemaManager = this.schemaMgr;
            getCharactersForAccount.soapAction = "\"\"";
            getCharactersForAccount.style = "document";
            BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.addOperation(getCharactersForAccount);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var addCharacter:WSDLOperation = new WSDLOperation("addCharacter");
				//input message for the operation
    	        requestMessage = new WSDLMessage("addCharacter");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","addCharacter"),null,new QName("http://character.ws.rpg.beacon.com/","addCharacter")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("addCharacterResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","addCharacterResponse"),null,new QName("http://character.ws.rpg.beacon.com/","addCharacterResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				addCharacter.inputMessage = requestMessage;
	        addCharacter.outputMessage = responseMessage;
            addCharacter.schemaManager = this.schemaMgr;
            addCharacter.soapAction = "\"\"";
            addCharacter.style = "document";
            BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.addOperation(addCharacter);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var removeCharacterById:WSDLOperation = new WSDLOperation("removeCharacterById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("removeCharacterById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","removeCharacterById"),null,new QName("http://character.ws.rpg.beacon.com/","removeCharacterById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("removeCharacterByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","removeCharacterByIdResponse"),null,new QName("http://character.ws.rpg.beacon.com/","removeCharacterByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				removeCharacterById.inputMessage = requestMessage;
	        removeCharacterById.outputMessage = responseMessage;
            removeCharacterById.schemaManager = this.schemaMgr;
            removeCharacterById.soapAction = "\"\"";
            removeCharacterById.style = "document";
            BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.addOperation(removeCharacterById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getCharacterById:WSDLOperation = new WSDLOperation("getCharacterById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getCharacterById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","getCharacterById"),null,new QName("http://character.ws.rpg.beacon.com/","getCharacterById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getCharacterByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","getCharacterByIdResponse"),null,new QName("http://character.ws.rpg.beacon.com/","getCharacterByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getCharacterById.inputMessage = requestMessage;
	        getCharacterById.outputMessage = responseMessage;
            getCharacterById.schemaManager = this.schemaMgr;
            getCharacterById.soapAction = "\"\"";
            getCharacterById.style = "document";
            BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.addOperation(getCharacterById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateCharacter:WSDLOperation = new WSDLOperation("updateCharacter");
				//input message for the operation
    	        requestMessage = new WSDLMessage("updateCharacter");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","updateCharacter"),null,new QName("http://character.ws.rpg.beacon.com/","updateCharacter")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("updateCharacterResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://character.ws.rpg.beacon.com/","updateCharacterResponse"),null,new QName("http://character.ws.rpg.beacon.com/","updateCharacterResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://character.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				updateCharacter.inputMessage = requestMessage;
	        updateCharacter.outputMessage = responseMessage;
            updateCharacter.schemaManager = this.schemaMgr;
            updateCharacter.soapAction = "\"\"";
            updateCharacter.style = "document";
            BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.addOperation(updateCharacter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","removeCharacterById"),net.homeip.RemoveCharacterById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","getCharactersForAccount"),net.homeip.GetCharactersForAccount);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","getCharacterById"),net.homeip.GetCharacterById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","addCharacterResponse"),net.homeip.AddCharacterResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","getCharacterByIdResponse"),net.homeip.GetCharacterByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","updateCharacterResponse"),net.homeip.UpdateCharacterResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://character.ws.rpg.beacon.com/","getCharactersForAccountResponse"),net.homeip.GetCharactersForAccountResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","addCharacter"),net.homeip.AddCharacter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","removeCharacterByIdResponse"),net.homeip.RemoveCharacterByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","updateCharacter"),net.homeip.UpdateCharacter);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://character.ws.rpg.beacon.com/","rpgCharacter"),net.homeip.RpgCharacter);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getCharactersForAccount
		 * @return Asynchronous token
		 */
		public function getCharactersForAccount(getCharactersForAccount:GetCharactersForAccount):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getCharactersForAccount"] = getCharactersForAccount;
	            currentOperation = BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.getOperation("getCharactersForAccount");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param addCharacter
		 * @return Asynchronous token
		 */
		public function addCharacter(addCharacter:AddCharacter):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["addCharacter"] = addCharacter;
	            currentOperation = BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.getOperation("addCharacter");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param removeCharacterById
		 * @return Asynchronous token
		 */
		public function removeCharacterById(removeCharacterById:RemoveCharacterById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["removeCharacterById"] = removeCharacterById;
	            currentOperation = BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.getOperation("removeCharacterById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getCharacterById
		 * @return Asynchronous token
		 */
		public function getCharacterById(getCharacterById:GetCharacterById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getCharacterById"] = getCharacterById;
	            currentOperation = BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.getOperation("getCharacterById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param updateCharacter
		 * @return Asynchronous token
		 */
		public function updateCharacter(updateCharacter:UpdateCharacter):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["updateCharacter"] = updateCharacter;
	            currentOperation = BaseCharacterServiceServiceService.getPort("BaseCharacterServiceServicePort").binding.portType.getOperation("updateCharacter");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        {
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                decoder.resultFormat = "object";
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}