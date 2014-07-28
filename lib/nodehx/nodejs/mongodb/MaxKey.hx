package nodejs.mongodb;

/**
 * A class representation of the BSON MaxKey type
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').MaxKey)")
extern class MaxKey
{
	
	/**
	 * Creates a new MaxKey instance.
	 */
	function new():Void;
	
	
}