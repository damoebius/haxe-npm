package nodejs.mongodb;
import nodejs.mongodb.ObjectID.ObjectIDInternal;

/**
 * Native ObjectID instance.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('mongodb').ObjectID")
extern class ObjectID
{
	
	/**
	 * Creates an ObjectID from a second based number, with the rest of the ObjectID zeroed out. Used for comparisons or sorting the ObjectID.
	 * @param	p_time
	 * @return
	 */
	static function createFromTime(p_time:Int):ObjectID;
	
	/**
	 * Creates an ObjectID from a hex string representation of an ObjectID.
	 * @param	p_hex
	 * @return
	 */
	static function createFromHexString(p_hex:String):ObjectID;
	
	/**
	 * Checks if a value is a valid bson ObjectId
	 * @param	p_id
	 * @return
	 */
	static function isValid(p_id:Dynamic):Bool;

	/**
	 * Create a new ObjectID instance. id (string) – Can be a 24 byte hex string, 12 byte binary string or a Number.
	 */
	@:overload(function():Void{})
	function new(p_id:Dynamic) :Void;
	
	/**
	 * Return the ObjectID id as a 24 byte hex string representation
	 * @return
	 */
	function toHexString():String;
	
	/**
	 * Compares the equality of this ObjectID with <code>otherID</code>.
	 * @param	p_op
	 * @return
	 */
	function equals(p_op : ObjectID):Bool;
	
	/**
	 * Returns the generation date (accurate up to the second) that this ID was generated.
	 * @return
	 */
	function getTimestamp():Dynamic;
	
}
