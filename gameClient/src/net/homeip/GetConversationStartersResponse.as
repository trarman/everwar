/**
 * GetConversationStartersResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.homeip
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetConversationStartersResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetConversationStartersResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addConversationExchangeAt(item:ConversationExchange,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addConversationExchange(item:ConversationExchange):void 
		{
			addItem(item);
		} 

		public function getConversationExchangeAt(index:int):ConversationExchange 
		{
			return getItemAt(index) as ConversationExchange;
		}

		public function getConversationExchangeIndex(item:ConversationExchange):int 
		{
			return getItemIndex(item);
		}

		public function setConversationExchangeAt(item:ConversationExchange,index:int):void 
		{
			setItemAt(item,index);
		}

		public function asIList():IList 
		{
			return this as IList;
		}
        
		public function asICollectionView():ICollectionView 
		{
			return this as ICollectionView;
		}
	}
}
