/**
 * BaseNPCServiceServiceService.as
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
	public class BaseNPCServiceService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseNPCServiceServiceService:WSDLService;
		private var BaseNPCServiceServicePortType:WSDLPortType;
		private var BaseNPCServiceServiceBinding:WSDLBinding;
		private var BaseNPCServiceServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseNPCServiceServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseNPCServiceService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseNPCServiceServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseNPCServiceServiceService = new WSDLService("BaseNPCServiceServiceService");
			BaseNPCServiceServicePort = new WSDLPort("BaseNPCServiceServicePort",BaseNPCServiceServiceService);
        	BaseNPCServiceServiceBinding = new WSDLBinding("BaseNPCServiceServiceBinding");
	        BaseNPCServiceServicePortType = new WSDLPortType("BaseNPCServiceServicePortType");
       		BaseNPCServiceServiceBinding.portType = BaseNPCServiceServicePortType;
       		BaseNPCServiceServicePort.binding = BaseNPCServiceServiceBinding;
       		BaseNPCServiceServiceService.addPort(BaseNPCServiceServicePort);
       		BaseNPCServiceServicePort.endpointURI = "http://darkshade.homeip.net/rpgEditorServer/npc";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseNPCServiceServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var removeNPCById:WSDLOperation = new WSDLOperation("removeNPCById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("removeNPCById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","removeNPCById"),null,new QName("http://npc.ws.rpg.beacon.com/","removeNPCById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("removeNPCByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","removeNPCByIdResponse"),null,new QName("http://npc.ws.rpg.beacon.com/","removeNPCByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				removeNPCById.inputMessage = requestMessage;
	        removeNPCById.outputMessage = responseMessage;
            removeNPCById.schemaManager = this.schemaMgr;
            removeNPCById.soapAction = "\"\"";
            removeNPCById.style = "document";
            BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.addOperation(removeNPCById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var addNPC:WSDLOperation = new WSDLOperation("addNPC");
				//input message for the operation
    	        requestMessage = new WSDLMessage("addNPC");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","addNPC"),null,new QName("http://npc.ws.rpg.beacon.com/","addNPC")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("addNPCResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","addNPCResponse"),null,new QName("http://npc.ws.rpg.beacon.com/","addNPCResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				addNPC.inputMessage = requestMessage;
	        addNPC.outputMessage = responseMessage;
            addNPC.schemaManager = this.schemaMgr;
            addNPC.soapAction = "\"\"";
            addNPC.style = "document";
            BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.addOperation(addNPC);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getNPCList:WSDLOperation = new WSDLOperation("getNPCList");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getNPCList");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","getNPCList"),null,new QName("http://npc.ws.rpg.beacon.com/","getNPCList")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getNPCListResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","getNPCListResponse"),null,new QName("http://npc.ws.rpg.beacon.com/","getNPCListResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getNPCList.inputMessage = requestMessage;
	        getNPCList.outputMessage = responseMessage;
            getNPCList.schemaManager = this.schemaMgr;
            getNPCList.soapAction = "\"\"";
            getNPCList.style = "document";
            BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.addOperation(getNPCList);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getNPCById:WSDLOperation = new WSDLOperation("getNPCById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getNPCById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","getNPCById"),null,new QName("http://npc.ws.rpg.beacon.com/","getNPCById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getNPCByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","getNPCByIdResponse"),null,new QName("http://npc.ws.rpg.beacon.com/","getNPCByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getNPCById.inputMessage = requestMessage;
	        getNPCById.outputMessage = responseMessage;
            getNPCById.schemaManager = this.schemaMgr;
            getNPCById.soapAction = "\"\"";
            getNPCById.style = "document";
            BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.addOperation(getNPCById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateNPC:WSDLOperation = new WSDLOperation("updateNPC");
				//input message for the operation
    	        requestMessage = new WSDLMessage("updateNPC");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","updateNPC"),null,new QName("http://npc.ws.rpg.beacon.com/","updateNPC")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("updateNPCResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://npc.ws.rpg.beacon.com/","updateNPCResponse"),null,new QName("http://npc.ws.rpg.beacon.com/","updateNPCResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://npc.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				updateNPC.inputMessage = requestMessage;
	        updateNPC.outputMessage = responseMessage;
            updateNPC.schemaManager = this.schemaMgr;
            updateNPC.soapAction = "\"\"";
            updateNPC.style = "document";
            BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.addOperation(updateNPC);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","getNPCById"),net.homeip.GetNPCById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","getNPCByIdResponse"),net.homeip.GetNPCByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","getNPCList"),net.homeip.GetNPCList);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","removeNPCById"),net.homeip.RemoveNPCById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","addNPC"),net.homeip.AddNPC);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","updateNPCResponse"),net.homeip.UpdateNPCResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","addNPCResponse"),net.homeip.AddNPCResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://npc.ws.rpg.beacon.com/","getNPCListResponse"),net.homeip.GetNPCListResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","updateNPC"),net.homeip.UpdateNPC);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","removeNPCByIdResponse"),net.homeip.RemoveNPCByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://npc.ws.rpg.beacon.com/","npcCharacter"),net.homeip.NpcCharacter);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param removeNPCById
		 * @return Asynchronous token
		 */
		public function removeNPCById(removeNPCById:RemoveNPCById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["removeNPCById"] = removeNPCById;
	            currentOperation = BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.getOperation("removeNPCById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param addNPC
		 * @return Asynchronous token
		 */
		public function addNPC(addNPC:AddNPC):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["addNPC"] = addNPC;
	            currentOperation = BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.getOperation("addNPC");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getNPCList
		 * @return Asynchronous token
		 */
		public function getNPCList(getNPCList:GetNPCList):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getNPCList"] = getNPCList;
	            currentOperation = BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.getOperation("getNPCList");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getNPCById
		 * @return Asynchronous token
		 */
		public function getNPCById(getNPCById:GetNPCById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getNPCById"] = getNPCById;
	            currentOperation = BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.getOperation("getNPCById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param updateNPC
		 * @return Asynchronous token
		 */
		public function updateNPC(updateNPC:UpdateNPC):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["updateNPC"] = updateNPC;
	            currentOperation = BaseNPCServiceServiceService.getPort("BaseNPCServiceServicePort").binding.portType.getOperation("updateNPC");
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