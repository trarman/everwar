/**
 * GetMapObjectsForZoneIdResponse.as
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

	public class GetMapObjectsForZoneIdResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetMapObjectsForZoneIdResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addMapObjectAt(item:MapObject,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addMapObject(item:MapObject):void 
		{
			addItem(item);
		} 

		public function getMapObjectAt(index:int):MapObject 
		{
			return getItemAt(index) as MapObject;
		}

		public function getMapObjectIndex(item:MapObject):int 
		{
			return getItemIndex(item);
		}

		public function setMapObjectAt(item:MapObject,index:int):void 
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
