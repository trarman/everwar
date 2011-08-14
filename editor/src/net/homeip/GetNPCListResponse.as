/**
 * GetNPCListResponse.as
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

	public class GetNPCListResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetNPCListResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addNpcCharacterAt(item:NpcCharacter,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addNpcCharacter(item:NpcCharacter):void 
		{
			addItem(item);
		} 

		public function getNpcCharacterAt(index:int):NpcCharacter 
		{
			return getItemAt(index) as NpcCharacter;
		}

		public function getNpcCharacterIndex(item:NpcCharacter):int 
		{
			return getItemIndex(item);
		}

		public function setNpcCharacterAt(item:NpcCharacter,index:int):void 
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
