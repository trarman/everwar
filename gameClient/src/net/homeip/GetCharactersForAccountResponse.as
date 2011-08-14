/**
 * GetCharactersForAccountResponse.as
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

	public class GetCharactersForAccountResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetCharactersForAccountResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addRpgCharacterAt(item:RpgCharacter,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addRpgCharacter(item:RpgCharacter):void 
		{
			addItem(item);
		} 

		public function getRpgCharacterAt(index:int):RpgCharacter 
		{
			return getItemAt(index) as RpgCharacter;
		}

		public function getRpgCharacterIndex(item:RpgCharacter):int 
		{
			return getItemIndex(item);
		}

		public function setRpgCharacterAt(item:RpgCharacter,index:int):void 
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
