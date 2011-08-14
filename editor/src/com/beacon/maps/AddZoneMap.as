/**
 * AddZoneMap.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package com.beacon.maps
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class AddZoneMap
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function AddZoneMap() {}
            
		public var name:String;
		public var width:Number;
		public var height:Number;
		public var music:String;
		[ArrayElementType("ZoneCell")]
		public var mapData:Array;
	}
}