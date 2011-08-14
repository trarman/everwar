package com.beacon.rpg
{
	import flash.geom.Point;
	
	public class GameCamera
	{
		// Think of these as algebriac vectors
		private var origin:Point;
		private var size:Point;
		private var halfSize:Point;		
		private var mapSize:Point;

		public function GameCamera(size:Point, mapSize:Point)
		{
			this.size = size;
			this.mapSize = mapSize;
			if (size.x>mapSize.x) size.x=mapSize.x;
			if (size.y>mapSize.y) size.y=mapSize.y;
			halfSize = new Point(Math.floor(size.x/2),Math.floor(size.y/2));
			origin = new Point(0,0);
		}

		public function centerOnLocation(location:Point):Point
		{
			var destOrigin:Point = new Point(location.x-halfSize.x,location.y-halfSize.y);
			if (destOrigin.x>mapSize.x-size.x) destOrigin.x = mapSize.x-size.x;
			if (destOrigin.y>mapSize.y-size.y) destOrigin.y = mapSize.y-size.y;
			if (destOrigin.x<0) destOrigin.x = 0;
			if (destOrigin.y<0) destOrigin.y = 0;
			var oldOrigin:Point = origin;
			origin = destOrigin;
			return new Point(oldOrigin.x-origin.x,oldOrigin.y-origin.y);
		}
		
		public function getOrigin():Point
		{
			return origin;
		}
		
		public function getSize():Point
		{
			return size;
		}
		
		public function isObjectVisible(location:Point):Boolean
		{
			return (location.x>=origin.x && location.x<origin.x+size.x && location.y>=origin.y && location.y<origin.y+size.y);
		}
		
		public function areCoordsInView(x:int, y:int):Boolean
		{
			return (x>=origin.x && x<origin.x+size.x && y>=origin.y && y<origin.y+size.y);		
		}
		
		public function getScreenPositionForObject(location:Point):Point
		{
			return new Point(location.x-origin.x,location.y-origin.y);
		}
		
		public function getScreenPositionForCoords(x:int, y:int):Point
		{
			return new Point(x-origin.x,y-origin.y);
		}
		
		public function getAbsolutePositionForObject(screenLocation:Point):Point
		{
			return new Point(screenLocation.x+origin.x,screenLocation.y+origin.y);
		}
		
		public function getMiniMapOrigin():Point
		{
			return new Point(origin.x/mapSize.x*100,origin.y/mapSize.y*100);
		}
		
		public function getMiniMapSize():Point
		{
			return new Point(size.x/mapSize.x*100,size.y/mapSize.y*100);
		}
	}
}