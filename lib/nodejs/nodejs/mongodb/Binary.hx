package nodejs.mongodb;
import nodejs.Buffer;

/**
 * A class representation of the BSON Binary type.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').Binary)")
extern class Binary
{
	
	/**
	 * 0	Default BSON type
	 */
	static var SUBTYPE_DEFAULT			:Int;
	
	/**
	 * 1	Function BSON type
	 */
	static var SUBTYPE_FUNCTION			:Int;
	
	/**
	 * 2	Byte Array BSON type
	 */
	static var SUBTYPE_BYTE_ARRAY		:Int;
	
	/**
	 * 3	OLD UUID BSON type
	 */
	static var SUBTYPE_UUID_OLD			:Int;
	
	/**
	 * 4	UUID BSON type
	 */
	static var SUBTYPE_UUID				:Int;
	
	/**
	 * 5	MD5 BSON type
	 */
	static var SUBTYPE_MD5				:Int;
	
	/**
	 * 128	User BSON type
	 */
	static var SUBTYPE_USER_DEFINED		:Int; 
	
	/**
	 * Updates this binary with byte_value.
	 * @param	p_char
	 */
	function put(p_char:Int):Void;
	
	/**
	 * Writes a buffer or string to the binary.
	 * @param	p_string
	 * @param	p_offset
	 */
	function write(p_string:String, p_offset:Int):Void;
	
	
	/**
	 * Writes a buffer or string to the binary.
	 * @param	p_position
	 * @param	p_length
	 * @return
	 */
	function read(p_position:Int, p_length:Int):Buffer;
	
	/**
	 * Returns the value of this binary as a string.
	 * @return
	 */
	function value():String;
	
	/**
	 * The length of the binary.
	 * @return
	 */
	function length():Int;
	
	
}