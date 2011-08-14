package com.beacon.rpg
{
	import mx.controls.TextInput;
	import mx.events.FlexEvent;
	
	import net.user1.reactor.IClient;
	import net.user1.reactor.Reactor;
	import net.user1.reactor.Room;
	import net.user1.reactor.ui.ChatIncomingTextArea;
	
	public class ChatManager
	{

		public static const CHAT_MESSAGE:String = "CHAT_MESSAGE";
		
		private var chatPanel:ChatIncomingTextArea;
		private var chatInput:TextInput;
		private var charName:String;

		private var reactor:Reactor;
		private var room:Room;
		
		public function ChatManager(reactor:Reactor, room:Room, chatInput:TextInput, chatPanel:ChatIncomingTextArea, charName:String)
		{
			this.reactor = reactor;
			this.room = room;
			this.chatInput = chatInput;
			this.chatPanel = chatPanel;
			this.charName = charName;
			room.addMessageListener(CHAT_MESSAGE, chatMessageListener);	
		}

		private function chatMessageListener(fromClient:IClient, chatText:String ):void
		{
			chatPanel.displayMessage(chatText);
		}

		public function submitChat():void
		{
			sendMessage(charName+":"+chatInput.text);
			chatInput.text="";
		}
		 
		public function sendMessage(message:String):void
		{
			room.sendMessage(CHAT_MESSAGE, true, null, message);
		}
	}
}