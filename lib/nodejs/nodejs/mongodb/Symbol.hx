package nodejs.mongodb;

/**
 * A class representation of the BSON Symbol type.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').Symbol)")
extern class Symbol
{
	
	/**
	 * A class representation of the BSON Symbol type.
	 * @param	v
	 */
	function new(v:String):Void;
	
	/**
	 * Access the wrapped string value.
	 * @return
	 */
	function valueOf():String;
	
	
}