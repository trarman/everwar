/**
 * GetTilesByCategoryIdResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.beacon.tiles
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetTilesByCategoryIdResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetTilesByCategoryIdResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addTileAt(item:Tile,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addTile(item:Tile):void 
		{
			addItem(item);
		} 

		public function getTileAt(index:int):Tile 
		{
			return getItemAt(index) as Tile;
		}

		public function getTileIndex(item:Tile):int 
		{
			return getItemIndex(item);
		}

		public function setTileAt(item:Tile,index:int):void 
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
