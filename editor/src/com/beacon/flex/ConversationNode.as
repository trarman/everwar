package com.beacon.flex
{
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	
	import net.homeip.ConversationAnswer;
	import net.homeip.ConversationExchange;
	
	public class ConversationNode
	{
		public static const TYPE_EXCHANGE:int = 1;
		public static const TYPE_ANSWER:int = 2;
		[Embed(source="assets/images/person.png")]
		public var personIcon:Class;
		[Embed(source="assets/images/cpu.png")]
		public var cpuIcon:Class;
		
	    public var id : Number;	
	    public var label : String;
	    public var icon : Class;
	    public var type : int;
		public var data : Object;    
	    public var children : ArrayCollection;
	    public var parent: ConversationNode;
		public var conversation:IList;
		
	    public function addChild(node : ConversationNode) : void {
	    	if (this.children == null)
	    		this.children = new ArrayCollection();
	    	children.addItem(node);
	    }

		public function setExchange(exchange:ConversationExchange):void {
			if (exchange!=null) {
				id=exchange.id;
				label=exchange.npcDialog;
				data=exchange;
				icon=cpuIcon;
				type=TYPE_EXCHANGE;
				if (exchange.responses!=null && exchange.responses.length>0) {
					for each (var answer:ConversationAnswer  in exchange.responses) {
						addAnswer(answer);
					}
				}
			}
		}

		public function setAnswer(answer:ConversationAnswer):void {
			if (answer!=null) {
				id=answer.id;
				label=answer.answer;
				data=answer;
				icon=personIcon;
				type=TYPE_ANSWER;
				if (answer.nextExchange>0) {
					addExchange(getExchangeById(answer.nextExchange));
				}
			}
		}

		public function addExchange(exchange:ConversationExchange):void {
			if (exchange!=null) {
				var node:ConversationNode = new ConversationNode();
				node.conversation = conversation;
				node.parent = this;
				node.setExchange(exchange);
				addChild(node);
			}
		}
		
		public function addAnswer(answer:ConversationAnswer):void {
			if (answer!=null) {
				var node:ConversationNode = new ConversationNode();
				node.conversation = conversation;
				node.parent = this;
				node.setAnswer(answer);
				addChild(node);			
			}
		}

		public function getExchangeById(eid:Number):ConversationExchange
		{
			var exchange:ConversationExchange = null;
			for each (var foo:ConversationExchange in conversation) {
				if (foo.id==eid) {
					exchange=foo;
					break;
				}
			}
			return exchange;
		}

		public function addExchangeNodesToCollection(exchanges:IList):void
		{
			if (type==TYPE_EXCHANGE) {
				exchanges.addItem(this);
			}
			if (children!=null) {
				for each (var node:ConversationNode in children) {
					node.addExchangeNodesToCollection(exchanges);
				}
			}
		}
		
		public function addAnswerNodesToCollection(answers:IList):void
		{
			if (type==TYPE_ANSWER) {
				answers.addItem(this);
			}
			if (children!=null) {
				for each (var node:ConversationNode in children) {
					node.addAnswerNodesToCollection(answers);
				}
			}			
		}
		
		public function updateId(uid:Number):void
		{
			id = uid;
			var answer:ConversationAnswer;
			var node:ConversationNode;
			if (type == TYPE_EXCHANGE) {
				if (children != null) {
					for each (node in children) {
						answer = node.data as ConversationAnswer;
						answer.answerToId = id;
					}
				}
				if (parent != null) {
					answer = parent.data as ConversationAnswer;
					answer.nextExchange = id;
				}
			}
		}
	}
}