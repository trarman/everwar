/**
 * ZoneMap.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package net.homeip
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class ZoneMap
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function ZoneMap() {}
            
		public var height:Number;
		[ArrayElementType("ZoneCell")]
		public var mapData:Array;
		[ArrayElementType("MapObject")]
		public var mapObjects:Array;
		public var music:String;
		public var width:Number;
		public var zoneId:Number;
		public var zoneName:String;
	}
}