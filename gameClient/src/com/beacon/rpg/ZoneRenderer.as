package com.beacon.rpg
{
	import com.beacon.rpg.events.ZoneRendererEvent;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;
	
	import mx.core.Application;
	
	import net.homeip.ZoneCell;
	import net.homeip.ZoneMap;
	import net.homeip.mapObjectService.GetMapObjectsForZoneIdResponse;
	import net.homeip.mapObjectService.MapObject;
	
	public class ZoneRenderer extends EventDispatcher
	{
		
		public var tileIndex:Array;
		public var tileImageData:Array;
		private var tileSurface:Array;
		private var tileInteractive:Array;
		private var tileUpper:Array;
		private var zone:ZoneMap;
		public var surfaceBitmapData:BitmapData;
		public var interactiveBitmapData:BitmapData;
		public var upperBitmapData:BitmapData;
		private var gridArray:Array;
		private var currentPos:uint;
		private var loader:Loader;
		public var interactiveSpots:Object;
		private var unseenObjectId:Number = -1;
		
		public var mapObjects:Object;
		
		public function ZoneRenderer(unseenObjectId:Number)
		{
			this.unseenObjectId = unseenObjectId;
		}

		public function loadZone(myzone:ZoneMap):void
		{
			zone = myzone;
			tileIndex = [];
			tileImageData = [];
			mapObjects = {};
			interactiveSpots = {};
			surfaceBitmapData = new BitmapData(zone.width*48, zone.height*48, true, 0x00ffffff);
			interactiveBitmapData = new BitmapData(zone.width*48,zone.height*48, true, 0x00ffffff);
			upperBitmapData = new BitmapData(zone.width*48, zone.height*48, true, 0x00ffffff);
			trace("Zone is "+zone.width*48+" by "+zone.height*48+" pixels");
			trace(zone.width+" x "+zone.height+" tiles");
			gridArray = [zone.height];			
			for (var gridy:int=0;gridy<zone.height;gridy++) {
				gridArray[gridy] = [zone.width];
				for (var gridx:int=0;gridx<zone.width;gridx++) {
					var cell:ZoneCell=null;
					if (zone.mapData!=null) {
						cell = zone.mapData.pop() as ZoneCell;
						if (cell==null) {
							Application.application.chatPanel.displayMessage("missing map data at grid("+gridx+","+gridy+")!");
						} else {
							if (shouldAddTileIdToIndex(cell.surfaceLayerTileId)) {
								tileIndex.push(cell.surfaceLayerTileId);
							}
							if (shouldAddTileIdToIndex(cell.interactiveLayerTileId)) {
								tileIndex.push(cell.interactiveLayerTileId);
							}
							if (shouldAddTileIdToIndex(cell.upperLayerTileId)) {
								tileIndex.push(cell.upperLayerTileId);
							}
							if (cell.interactiveLayerTileId!=0) {
								interactiveSpots["t_"+gridx+"_"+gridy]=cell;								
							}
						}
					}
					gridArray[gridy][gridx]=cell;
				}
			}
			var myEvent:ZoneRendererEvent = new ZoneRendererEvent(ZoneRendererEvent.READY_FOR_OBJECTS);
			dispatchEvent(myEvent);
		}
		
		public function loadMapObjects(mapObjectsList:GetMapObjectsForZoneIdResponse):void
		{
			if (mapObjectsList!=null && mapObjectsList.length>0) {
				for (var i:int = 0;i<mapObjectsList.length;i++) {
					var mapObject:MapObject = mapObjectsList.getMapObjectAt(i);
					if (shouldAddTileIdToIndex(mapObject.tileId)) {
						tileIndex.push(mapObject.tileId);
					}
					mapObjects[mapObject.id] = mapObject;
					// If not a wandering NPC, insert mapObject into cell interactive layer
					if (mapObject.type!=2) {
						var cell:ZoneCell = gridArray[mapObject.y][mapObject.x] as ZoneCell;
						cell.interactiveLayerTileId=mapObject.tileId;
					}
				}
			}
			if (tileIndex.length>0) {
				var myEvent:ZoneRendererEvent = new ZoneRendererEvent(ZoneRendererEvent.READY_FOR_TILES);
				dispatchEvent(myEvent);
			}
		}
		
		private function shouldAddTileIdToIndex(tileId:Number):Boolean
		{
			return (!isNaN(tileId) && tileId>0 && tileIndex.indexOf(tileId)<0)
		}
		
		public function loadTileImageData():void
		{
			trace("Applying image data");
			tileSurface=[];
			tileInteractive=[];
			tileUpper=[];
			for (var i:int=0;i<tileIndex.length;i++) {
				tileSurface.push([]);
				tileInteractive.push([]);
				tileUpper.push([]);
				for (var gridy:int=0;gridy<zone.height;gridy++) {
					for (var gridx:int=0;gridx<zone.width;gridx++) {
						var cell:ZoneCell = gridArray[gridy][gridx] as ZoneCell;
						if (cell!=null) {
							if (cell.surfaceLayerTileId==tileIndex[i]) {
								tileSurface[i].push(new Point(gridx*48,gridy*48));
							}
							if (cell.interactiveLayerTileId==tileIndex[i]) {
								tileInteractive[i].push(new Point(gridx*48,gridy*48));
							}
							if (cell.upperLayerTileId==tileIndex[i]) {
								tileUpper[i].push(new Point(gridx*48,gridy*48));
							}
						}
					}
				}
			}
			trace("Drawing pixels");
			currentPos=0;
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, imgLoaded);
			Application.application.callLater(doCopy,[]);
		}

		private function doCopy():void
		{
			if (currentPos<tileIndex.length) {
				loader.loadBytes(tileImageData[currentPos]);
			} else {
				trace("Done");
				//Application.application.updateDisplay();
				//Application.application.addKeyboardListener();
				var myEvent:ZoneRendererEvent = new ZoneRendererEvent(ZoneRendererEvent.RENDERED);
				dispatchEvent(myEvent);
			}
		}			
		
		private function imgLoaded(event:Event):void
		{
			// Skip the unseen object, since it's supposed to be unseen!
			if (tileIndex[currentPos]!=unseenObjectId) {
				var bmd:BitmapData = Bitmap(event.currentTarget.content).bitmapData;
				for (var i:uint=0;i<tileSurface[currentPos].length;i++) {
					surfaceBitmapData.copyPixels(bmd, bmd.rect, tileSurface[currentPos][i],null,null,true);
				}
				for (var j:uint=0;j<tileInteractive[currentPos].length;j++) {
					interactiveBitmapData.copyPixels(bmd, bmd.rect, tileInteractive[currentPos][j],null,new Point(0,0),true);				
				}
				for (var k:uint=0;k<tileUpper[currentPos].length;k++) {
					upperBitmapData.copyPixels(bmd, bmd.rect, tileUpper[currentPos][k],null,new Point(0,0),true);				
				}
			}
			Application.application.callLater(doCopy,[]);
			currentPos++;
		}

		public function renderBitmaps(surfaceBitmap:Bitmap, camera:GameCamera, sprites:Object):void
		{
			var srcRect:Rectangle = new Rectangle(camera.getOrigin().x,camera.getOrigin().y,camera.getSize().x,camera.getSize().y);
			// Surface
			var bmd:BitmapData = new BitmapData(srcRect.width, srcRect.height, true, 0x00ffffff);
			bmd.copyPixels(surfaceBitmapData,srcRect,new Point(0,0),null,null,true);
			//surfaceBitmap.bitmapData=bmd;
			// Interactive
			//bmd = new BitmapData(srcRect.width, srcRect.height, true, 0x00ffffff);
			bmd.copyPixels(interactiveBitmapData,srcRect,new Point(0,0),null,null,true);
			for each (var sprite:BaseObject in sprites) {
				if (sprite!=null && sprite.bitmapData!=null && camera.areCoordsInView(sprite.x, sprite.y)) {
					bmd.copyPixels(sprite.bitmapData,sprite.bitmapData.rect,camera.getScreenPositionForCoords(sprite.x,sprite.y),null,null,true);
				}
			}
			//interactiveBitmap.bitmapData=bmd;
			// Upper
			//bmd = new BitmapData(srcRect.width, srcRect.height, true, 0x00ffffff);
			bmd.copyPixels(upperBitmapData,srcRect,new Point(0,0),null,null,true);
			surfaceBitmap.bitmapData=bmd;						
		}	
		
		public function getBytesForTileId(tileId:Number):ByteArray {
			var result:ByteArray = null;
			for (var i:uint = 0;i<tileIndex.length;i++) {
				if (tileIndex[i]==tileId) {
					result = tileImageData[i];
					break;
				}
			}
			return result;
		}
	}
}