package nodejs.mongodb;

/**
 * A class representation of the Read Preference.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').ReadPreference)")
extern class ReadPreference
{
	/**
	 * Read from primary only. All operations produce an error (throw an exception where applicable) if primary is unavailable. Cannot be combined with tags (This is the default.).
	 */
	static var PRIMARY				 :String;
	
	/**
	 * Read from primary if available, otherwise a secondary.
	 */
	static var PRIMARY_PREFERRED	 :String;
	
	/**
	 * Read from secondary if available, otherwise error.
	 */
	static var SECONDARY			 :String;
	
	/**
	 * Read from a secondary if available, otherwise read from the primary.
	 */
	static var SECONDARY_PREFERRED   :String;
	
	/**
	 * All modes read from among the nearest candidates, but unlike other modes, NEAREST will include both the primary and all secondaries in the random selection.
	 */
	static var NEAREST				 :String; 

	/**
	 * 
	 * @param	p_type
	 * @param	p_tags
	 */
	function new(p_type:String,p_tags:Dynamic);
}