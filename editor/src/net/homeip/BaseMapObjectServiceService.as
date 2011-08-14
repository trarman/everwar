/**
 * BaseMapObjectServiceServiceService.as
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
	public class BaseMapObjectServiceService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseMapObjectServiceServiceService:WSDLService;
		private var BaseMapObjectServiceServicePortType:WSDLPortType;
		private var BaseMapObjectServiceServiceBinding:WSDLBinding;
		private var BaseMapObjectServiceServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseMapObjectServiceServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseMapObjectServiceService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseMapObjectServiceServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseMapObjectServiceServiceService = new WSDLService("BaseMapObjectServiceServiceService");
			BaseMapObjectServiceServicePort = new WSDLPort("BaseMapObjectServiceServicePort",BaseMapObjectServiceServiceService);
        	BaseMapObjectServiceServiceBinding = new WSDLBinding("BaseMapObjectServiceServiceBinding");
	        BaseMapObjectServiceServicePortType = new WSDLPortType("BaseMapObjectServiceServicePortType");
       		BaseMapObjectServiceServiceBinding.portType = BaseMapObjectServiceServicePortType;
       		BaseMapObjectServiceServicePort.binding = BaseMapObjectServiceServiceBinding;
       		BaseMapObjectServiceServiceService.addPort(BaseMapObjectServiceServicePort);
       		BaseMapObjectServiceServicePort.endpointURI = "http://darkshade.homeip.net/rpgEditorServer/mapObjects";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseMapObjectServiceServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getMapObjectsForZoneId:WSDLOperation = new WSDLOperation("getMapObjectsForZoneId");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getMapObjectsForZoneId");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","getMapObjectsForZoneId"),null,new QName("http://mapObject.ws.rpg.beacon.com/","getMapObjectsForZoneId")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getMapObjectsForZoneIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","getMapObjectsForZoneIdResponse"),null,new QName("http://mapObject.ws.rpg.beacon.com/","getMapObjectsForZoneIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getMapObjectsForZoneId.inputMessage = requestMessage;
	        getMapObjectsForZoneId.outputMessage = responseMessage;
            getMapObjectsForZoneId.schemaManager = this.schemaMgr;
            getMapObjectsForZoneId.soapAction = "\"\"";
            getMapObjectsForZoneId.style = "document";
            BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.addOperation(getMapObjectsForZoneId);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateMapObject:WSDLOperation = new WSDLOperation("updateMapObject");
				//input message for the operation
    	        requestMessage = new WSDLMessage("updateMapObject");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","updateMapObject"),null,new QName("http://mapObject.ws.rpg.beacon.com/","updateMapObject")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("updateMapObjectResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","updateMapObjectResponse"),null,new QName("http://mapObject.ws.rpg.beacon.com/","updateMapObjectResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				updateMapObject.inputMessage = requestMessage;
	        updateMapObject.outputMessage = responseMessage;
            updateMapObject.schemaManager = this.schemaMgr;
            updateMapObject.soapAction = "\"\"";
            updateMapObject.style = "document";
            BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.addOperation(updateMapObject);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var removeMapObjectById:WSDLOperation = new WSDLOperation("removeMapObjectById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("removeMapObjectById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","removeMapObjectById"),null,new QName("http://mapObject.ws.rpg.beacon.com/","removeMapObjectById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("removeMapObjectByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","removeMapObjectByIdResponse"),null,new QName("http://mapObject.ws.rpg.beacon.com/","removeMapObjectByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				removeMapObjectById.inputMessage = requestMessage;
	        removeMapObjectById.outputMessage = responseMessage;
            removeMapObjectById.schemaManager = this.schemaMgr;
            removeMapObjectById.soapAction = "\"\"";
            removeMapObjectById.style = "document";
            BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.addOperation(removeMapObjectById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var addMapObject:WSDLOperation = new WSDLOperation("addMapObject");
				//input message for the operation
    	        requestMessage = new WSDLMessage("addMapObject");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","addMapObject"),null,new QName("http://mapObject.ws.rpg.beacon.com/","addMapObject")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("addMapObjectResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://mapObject.ws.rpg.beacon.com/","addMapObjectResponse"),null,new QName("http://mapObject.ws.rpg.beacon.com/","addMapObjectResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://mapObject.ws.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				addMapObject.inputMessage = requestMessage;
	        addMapObject.outputMessage = responseMessage;
            addMapObject.schemaManager = this.schemaMgr;
            addMapObject.soapAction = "\"\"";
            addMapObject.style = "document";
            BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.addOperation(addMapObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","updateMapObject"),net.homeip.UpdateMapObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","removeMapObjectByIdResponse"),net.homeip.RemoveMapObjectByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","mapObject"),net.homeip.MapObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","addMapObjectResponse"),net.homeip.AddMapObjectResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","getMapObjectsForZoneId"),net.homeip.GetMapObjectsForZoneId);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://mapObject.ws.rpg.beacon.com/","getMapObjectsForZoneIdResponse"),net.homeip.GetMapObjectsForZoneIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","removeMapObjectById"),net.homeip.RemoveMapObjectById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","addMapObject"),net.homeip.AddMapObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://mapObject.ws.rpg.beacon.com/","updateMapObjectResponse"),net.homeip.UpdateMapObjectResponse);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getMapObjectsForZoneId
		 * @return Asynchronous token
		 */
		public function getMapObjectsForZoneId(getMapObjectsForZoneId:GetMapObjectsForZoneId):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getMapObjectsForZoneId"] = getMapObjectsForZoneId;
	            currentOperation = BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.getOperation("getMapObjectsForZoneId");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param updateMapObject
		 * @return Asynchronous token
		 */
		public function updateMapObject(updateMapObject:UpdateMapObject):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["updateMapObject"] = updateMapObject;
	            currentOperation = BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.getOperation("updateMapObject");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param removeMapObjectById
		 * @return Asynchronous token
		 */
		public function removeMapObjectById(removeMapObjectById:RemoveMapObjectById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["removeMapObjectById"] = removeMapObjectById;
	            currentOperation = BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.getOperation("removeMapObjectById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param addMapObject
		 * @return Asynchronous token
		 */
		public function addMapObject(addMapObject:AddMapObject):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["addMapObject"] = addMapObject;
	            currentOperation = BaseMapObjectServiceServiceService.getPort("BaseMapObjectServiceServicePort").binding.portType.getOperation("addMapObject");
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