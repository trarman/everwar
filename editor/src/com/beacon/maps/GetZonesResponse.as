/**
 * GetZonesResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.beacon.maps
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetZonesResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetZonesResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addZoneMapListItemAt(item:ZoneMapListItem,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addZoneMapListItem(item:ZoneMapListItem):void 
		{
			addItem(item);
		} 

		public function getZoneMapListItemAt(index:int):ZoneMapListItem 
		{
			return getItemAt(index) as ZoneMapListItem;
		}

		public function getZoneMapListItemIndex(item:ZoneMapListItem):int 
		{
			return getItemIndex(item);
		}

		public function setZoneMapListItemAt(item:ZoneMapListItem,index:int):void 
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
