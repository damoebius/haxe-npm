package nodejs.mongodb;

/**
 * A class representation of the BSON Code type.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').Code)")
extern class Code
{
	
	/**
	 * A class representation of the BSON Code type.
	 * @param	p_code
	 * @param	p_scope
	 */
	function new(p_code:String,p_scope:Dynamic):Void;
	
	
}