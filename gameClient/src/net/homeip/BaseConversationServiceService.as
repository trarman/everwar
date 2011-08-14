/**
 * BaseConversationServiceServiceService.as
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
	public class BaseConversationServiceService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseConversationServiceServiceService:WSDLService;
		private var BaseConversationServiceServicePortType:WSDLPortType;
		private var BaseConversationServiceServiceBinding:WSDLBinding;
		private var BaseConversationServiceServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseConversationServiceServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseConversationServiceService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseConversationServiceServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseConversationServiceServiceService = new WSDLService("BaseConversationServiceServiceService");
			BaseConversationServiceServicePort = new WSDLPort("BaseConversationServiceServicePort",BaseConversationServiceServiceService);
        	BaseConversationServiceServiceBinding = new WSDLBinding("BaseConversationServiceServiceBinding");
	        BaseConversationServiceServicePortType = new WSDLPortType("BaseConversationServiceServicePortType");
       		BaseConversationServiceServiceBinding.portType = BaseConversationServiceServicePortType;
       		BaseConversationServiceServicePort.binding = BaseConversationServiceServiceBinding;
       		BaseConversationServiceServiceService.addPort(BaseConversationServiceServicePort);
       		BaseConversationServiceServicePort.endpointURI = "http://darkshade.homeip.net/rpgEditorServer/conversation";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseConversationServiceServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getConversationById:WSDLOperation = new WSDLOperation("getConversationById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getConversationById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://conversation.ws.rpg.beacon.com/","getConversationById"),null,new QName("http://conversation.ws.rpg.beacon.com/","getConversationById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://conversation.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getConversationByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://conversation.ws.rpg.beacon.com/","getConversationByIdResponse"),null,new QName("http://conversation.ws.rpg.beacon.com/","getConversationByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://conversation.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getConversationById.inputMessage = requestMessage;
	        getConversationById.outputMessage = responseMessage;
            getConversationById.schemaManager = this.schemaMgr;
            getConversationById.soapAction = "\"\"";
            getConversationById.style = "document";
            BaseConversationServiceServiceService.getPort("BaseConversationServiceServicePort").binding.portType.addOperation(getConversationById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","getConversationStarters"),net.homeip.GetConversationStarters);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","saveConversationAnswer"),net.homeip.SaveConversationAnswer);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://conversation.ws.rpg.beacon.com/","getConversationByIdResponse"),net.homeip.GetConversationByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","removeConversationById"),net.homeip.RemoveConversationById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","saveConversationExchangeResponse"),net.homeip.SaveConversationExchangeResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","conversationAnswer"),net.homeip.ConversationAnswer);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","saveConversationExchange"),net.homeip.SaveConversationExchange);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","conversationExchange"),net.homeip.ConversationExchange);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://conversation.ws.rpg.beacon.com/","getConversationStartersResponse"),net.homeip.GetConversationStartersResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","saveConversationAnswerResponse"),net.homeip.SaveConversationAnswerResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","removeConversationByIdResponse"),net.homeip.RemoveConversationByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://conversation.ws.rpg.beacon.com/","getConversationById"),net.homeip.GetConversationById);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getConversationById
		 * @return Asynchronous token
		 */
		public function getConversationById(getConversationById:GetConversationById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getConversationById"] = getConversationById;
	            currentOperation = BaseConversationServiceServiceService.getPort("BaseConversationServiceServicePort").binding.portType.getOperation("getConversationById");
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