package com.beacon.rpg
{
	public class Faction
	{

		public static const FAELOR:int = 1;
	    public static const NEUTRAL:int = 2;
	    public static const AURAN:int = 3;
    
    	public static const STATE_ENEMIES:int = 1;
    	public static const STATE_NEUTRAL:int = 2;
    	public static const STATE_FRIENDLY:int = 3;
    	
    	public static function parseFactionName(name:String):int {
    		switch (name) {
    			case "Faelor": 
    				return FAELOR;
    				break;
    			case "Auran":
    				return AURAN;
    				break;
    			default:
    				return NEUTRAL;
    				break;
    		}
    	}
    	
    	public static function getStateOfFactions(faction1:int, faction2:int):int {
    		if (faction1 == FAELOR && faction2 == AURAN) {
    			return STATE_ENEMIES;
    		} else if (faction1 == faction2) {
    			return STATE_FRIENDLY;
    		} else {
    			return STATE_NEUTRAL;
    		}
    	} 
	}
}