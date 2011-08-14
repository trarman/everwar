/**
 * BaseTileServiceServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.beacon.tiles
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
	public class BaseTileServiceService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseTileServiceServiceService:WSDLService;
		private var BaseTileServiceServicePortType:WSDLPortType;
		private var BaseTileServiceServiceBinding:WSDLBinding;
		private var BaseTileServiceServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseTileServiceServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseTileServiceService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseTileServiceServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseTileServiceServiceService = new WSDLService("BaseTileServiceServiceService");
			BaseTileServiceServicePort = new WSDLPort("BaseTileServiceServicePort",BaseTileServiceServiceService);
        	BaseTileServiceServiceBinding = new WSDLBinding("BaseTileServiceServiceBinding");
	        BaseTileServiceServicePortType = new WSDLPortType("BaseTileServiceServicePortType");
       		BaseTileServiceServiceBinding.portType = BaseTileServiceServicePortType;
       		BaseTileServiceServicePort.binding = BaseTileServiceServiceBinding;
       		BaseTileServiceServiceService.addPort(BaseTileServiceServicePort);
       		BaseTileServiceServicePort.endpointURI = "http://darkshade.homeip.net/rpgEditorServer/tiles";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseTileServiceServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var addTile:WSDLOperation = new WSDLOperation("addTile");
				//input message for the operation
    	        requestMessage = new WSDLMessage("addTile");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","addTile"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","addTile")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("addTileResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","addTileResponse"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","addTileResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				addTile.inputMessage = requestMessage;
	        addTile.outputMessage = responseMessage;
            addTile.schemaManager = this.schemaMgr;
            addTile.soapAction = "\"\"";
            addTile.style = "document";
            BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.addOperation(addTile);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getTilesByCategoryId:WSDLOperation = new WSDLOperation("getTilesByCategoryId");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTilesByCategoryId");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","getTilesByCategoryId"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","getTilesByCategoryId")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getTilesByCategoryIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","getTilesByCategoryIdResponse"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","getTilesByCategoryIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getTilesByCategoryId.inputMessage = requestMessage;
	        getTilesByCategoryId.outputMessage = responseMessage;
            getTilesByCategoryId.schemaManager = this.schemaMgr;
            getTilesByCategoryId.soapAction = "\"\"";
            getTilesByCategoryId.style = "document";
            BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.addOperation(getTilesByCategoryId);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getTileById:WSDLOperation = new WSDLOperation("getTileById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTileById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","getTileById"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","getTileById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getTileByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","getTileByIdResponse"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","getTileByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				getTileById.inputMessage = requestMessage;
	        getTileById.outputMessage = responseMessage;
            getTileById.schemaManager = this.schemaMgr;
            getTileById.soapAction = "\"\"";
            getTileById.style = "document";
            BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.addOperation(getTileById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateTileById:WSDLOperation = new WSDLOperation("updateTileById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("updateTileById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","updateTileById"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","updateTileById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("updateTileByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tile.ws.editor.rpg.beacon.com/","updateTileByIdResponse"),null,new QName("http://tile.ws.editor.rpg.beacon.com/","updateTileByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tile.ws.editor.rpg.beacon.com/";
                responseMessage.encoding.useStyle="literal";				
				updateTileById.inputMessage = requestMessage;
	        updateTileById.outputMessage = responseMessage;
            updateTileById.schemaManager = this.schemaMgr;
            updateTileById.soapAction = "\"\"";
            updateTileById.style = "document";
            BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.addOperation(updateTileById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","getTileByIdResponse"),com.beacon.tiles.GetTileByIdResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://tile.ws.editor.rpg.beacon.com/","getTilesByCategoryIdResponse"),com.beacon.tiles.GetTilesByCategoryIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","getTileById"),com.beacon.tiles.GetTileById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","updateTileByIdResponse"),com.beacon.tiles.UpdateTileByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","tile"),com.beacon.tiles.Tile);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","addTile"),com.beacon.tiles.AddTile);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","addTileResponse"),com.beacon.tiles.AddTileResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","getTilesByCategoryId"),com.beacon.tiles.GetTilesByCategoryId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tile.ws.editor.rpg.beacon.com/","updateTileById"),com.beacon.tiles.UpdateTileById);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param addTile
		 * @return Asynchronous token
		 */
		public function addTile(addTile:AddTile):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["addTile"] = addTile;
	            currentOperation = BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.getOperation("addTile");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getTilesByCategoryId
		 * @return Asynchronous token
		 */
		public function getTilesByCategoryId(getTilesByCategoryId:GetTilesByCategoryId):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getTilesByCategoryId"] = getTilesByCategoryId;
	            currentOperation = BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.getOperation("getTilesByCategoryId");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getTileById
		 * @return Asynchronous token
		 */
		public function getTileById(getTileById:GetTileById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getTileById"] = getTileById;
	            currentOperation = BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.getOperation("getTileById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param updateTileById
		 * @return Asynchronous token
		 */
		public function updateTileById(updateTileById:UpdateTileById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["updateTileById"] = updateTileById;
	            currentOperation = BaseTileServiceServiceService.getPort("BaseTileServiceServicePort").binding.portType.getOperation("updateTileById");
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