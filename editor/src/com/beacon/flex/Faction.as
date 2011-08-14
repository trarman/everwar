package com.beacon.flex
{
	public class Faction
	{

		public static const FAELOR_CODE:int = 1;
		public static const AURAN_CODE:int = 3;
		public static const NEUTRAL_CODE:int = 2;
		
		public static const FAELOR:String = "Faelor";
		public static const AURAN:String = "Auran";
		public static const NEUTRAL:String = "Neutral";
		
		public static function getNameForCode(code:int):String
		{
			var result:String = "Unknown";
			switch (code) {
				case FAELOR_CODE:
					result = FAELOR;
					break;
				case AURAN_CODE:
					result = AURAN;
					break;
				case NEUTRAL_CODE:
					result = NEUTRAL;
					break;
			}
			return result;
		}
	}
}