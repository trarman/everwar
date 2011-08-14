package punk.util 
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	/**
	 * Static class updated by Engine. Use for defining and checking keyboard/mouse input.
	 */
	public class Input
	{
		/**
		 * If the mouse button is currently held down.
		 */
		public static var mouseDown:Boolean = false;
		
		/**
		 * If the mouse button is currently up.
		 */
		public static var mouseUp:Boolean = true;
		
		/**
		 * If the mouse button was pressed this frame.
		 */
		public static var mousePressed:Boolean = false;
		
		/**
		 * If the mouse button was released this frame.
		 */
		public static var mouseReleased:Boolean = false;
		
		/**
		 * The x-position of the mouse on the screen.
		 */
		public static function get mouseX():int
		{
			return FP.stage.mouseX / FP.screen.scale;
		}
		
		/**
		 * The y-position of the mouse on the screen.
		 */
		public static function get mouseY():int
		{
			return FP.stage.mouseY / FP.screen.scale;
		}
		
		/**
		 * Defines a new input and assigns the specified keys to it.
		 * @param	name		The name of the input.
		 * @param	...keys		The keys representing this input
		 */
		public static function define(name:String, ...keys):void
		{
			_control[name] = Vector.<int>(keys);
		}
		
		/**
		 * Returns whether the input is being held down.
		 * @param	name	The name of the input to check.
		 */
		public static function check(name:String):Boolean
		{
			var v:Vector.<int> = _control[name],
				i:int = v.length;
			while (i --)
			{
				if (_key[v[i]]) return true;
			}
			return false;
		}
		
		/**
		 * Returns whether the key is being held down.
		 * @param	keyCode	The keyCode of the key we are checking.
		 */
		public static function checkKey(keyCode:int):Boolean
		{
			return _key[keyCode];
		}
		
		/**
		 * Returns whether the input was pressed this frame.
		 * @param	name	The name of the input to check.
		 */
		public static function pressed(name:String):Boolean
		{
			var v:Vector.<int> = _control[name],
				i:int = v.length;
			while (i --)
			{
				if (_press.indexOf(v[i]) >= 0) return true;
			}
			return false;
		}
		
		/**
		 * Returns whether the key was pressed this frame.
		 * @param	keyCode	The keyCode of the key we are checking.
		 */
		public static function pressedKey(keyCode:int):Boolean
		{
			return _press.indexOf(keyCode) >= 0;
		}
		
		/**
		 * Returns whether the input was released this frame.
		 * @param	name	The name of the input to check.
		 */
		public static function released(name:String):Boolean
		{
			var v:Vector.<int> = _control[name],
				i:int = v.length;
			while (i --)
			{
				if (_release.indexOf(v[i]) >= 0) return true;
			}
			return false;
		}
		
		/**
		 * Returns whether the key was pressed this frame.
		 * @param	keyCode	The keyCode of the key we are checking.
		 */
		public static function releasedKey(keyCode:int):Boolean
		{
			return _release.indexOf(keyCode) >= 0;
		}
		
		/**
		 * Returns an array representing the keys for the type.
		 * @param	name	The name of the input to check.
		 */
		public static function keys(name:String):Vector.<int>
		{
			return _control[name] as Vector.<int>;
		}
		
		/**
		 * @private called by Engine when the game starts to enable the keyboard and mouse event listeners
		 */
		public static function enable(stage:Stage):void
		{
			if (!_enabled)
			{
				stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
				stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
				stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
				stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
				_enabled = true;
			}
		}
		
		/**
		 * @private called by Engine to update the mouse and key states
		 */
		public static function update():void
		{
			while (_pressNum --) _press[_pressNum] = -1;
			_pressNum = 0;
			while (_releaseNum --) _release[_releaseNum] = -1;
			_releaseNum = 0;
			if (mousePressed) mousePressed = false;
			if (mouseReleased) mouseReleased = false;
		}
		
		// key down event listener
		private static function onKeyDown(e:KeyboardEvent):void
		{
			var code:int = e.keyCode;
			if (!_key[code])
			{
				_key[code] = true;
				_keyNum ++;
				_press[_pressNum ++] = code;
			}
		}
		
		// key up event listener
		private static function onKeyUp(e:KeyboardEvent):void
		{
			var code:int = e.keyCode;
			if (_key[code])
			{
				_key[code] = false;
				_keyNum --;
				_release[_releaseNum ++] = code;
			}
		}
		
		// mouse down event listener
		private static function onMouseDown(e:MouseEvent):void
		{
			if (!mouseDown)
			{
				mouseDown = true;
				mouseUp = false;
				mousePressed = true;
				mouseReleased = false;
			}
		}
		
		// mouse up event listener
		private static function onMouseUp(e:MouseEvent):void
		{
			mouseDown = false;
			mouseUp = true;
			mousePressed = false;
			mouseReleased = true;
		}
		
		// input vars
		private static var _enabled:Boolean = false;
		private static var _key:Vector.<Boolean> = new Vector.<Boolean>(256);
		private static var _keyNum:int = 0;
		private static var _press:Vector.<int> = new Vector.<int>(256);
		private static var _release:Vector.<int> = new Vector.<int>(256);
		private static var _pressNum:int = 0;
		private static var _releaseNum:int = 0;
		private static var _control:Array = [];
	}
}