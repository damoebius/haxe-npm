package nodejs.mongodb;
import js.html.ArrayBuffer;
import js.html.ArrayBufferView;
import js.html.Int8Array;
import js.html.Uint8Array;
import nodejs.Buffer;
import nodejs.mongodb.MongoOption.BSONOption;

/**
 * BSON [bee · sahn], short for Bin­ary JSON, is a bin­ary-en­coded seri­al­iz­a­tion of JSON-like doc­u­ments.
 * Like JSON, BSON sup­ports the em­bed­ding of doc­u­ments and ar­rays with­in oth­er doc­u­ments and ar­rays. 
 * BSON also con­tains ex­ten­sions that al­low rep­res­ent­a­tion of data types that are not part of the JSON spec. 
 * For ex­ample, BSON has a Date type and a BinData type.
 * http://http://bsonspec.org/
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').BSON)")
extern class BSON
{
	/**
	 * 1		Number BSON Type
	 */
	static var BSON_DATA_NUMBER					:Int;
	/**
	 * 2		String BSON Type
	 */
	static var BSON_DATA_STRING					:Int; 
	/**
	 * 3		Object BSON Type
	 */
	static var BSON_DATA_OBJECT					:Int; 
	/**
	 * 4		Array BSON Type
	 */
	static var BSON_DATA_ARRAY					:Int; 
	/**
	 * 5		Binary BSON Type
	 */
	static var BSON_DATA_BINARY					:Int; 
	/**
	 * 7		ObjectID BSON Type
	 */
	static var BSON_DATA_OID					:Int; 
	/**
	 * 8		Boolean BSON Type
	 */
	static var BSON_DATA_BOOLEAN				:Int; 
	/**
	 * 9		Date BSON Type
	 */
	static var BSON_DATA_DATE					:Int; 
	/**
	 * 10		null BSON Type
	 */
	static var BSON_DATA_NULL					:Int; 
	/**
	 * 11		RegExp BSON Type
	 */
	static var BSON_DATA_REGEXP					:Int; 
	/**
	 * 13		Code BSON Type
	 */
	static var BSON_DATA_CODE					:Int; 
	/**
	 * 14		Symbol BSON Type
	 */
	static var BSON_DATA_SYMBOL					:Int; 
	/**
	 * 15		Code with Scope BSON Type
	 */
	static var BSON_DATA_CODE_W_SCOPE			:Int; 
	/**
	 * 16		32 bit Integer BSON Type
	 */
	static var BSON_DATA_INT					:Int; 
	
	/**
	 * 17		Timestamp BSON Type
	 */
	static var BSON_DATA_TIMESTAMP				:Int; 
	
	/**
	 * 18		Long BSON Type
	 */
	static var BSON_DATA_LONG					:Int; 
	/**
	 * 0xff	MinKey BSON Type
	 */
	static var BSON_DATA_MIN_KEY				:Int; 
	/**
	 * 0x7f	MaxKey BSON Type
	 */
	static var BSON_DATA_MAX_KEY				:Int; 
	/**
	 * 0		Binary Default Type
	 */
	static var BSON_BINARY_SUBTYPE_DEFAULT		:Int; 
	/**
	 * 1		Binary Function Type
	 */
	static var BSON_BINARY_SUBTYPE_FUNCTION		:Int; 
	/**
	 * 2		Binary Byte Array Type
	 */
	static var BSON_BINARY_SUBTYPE_BYTE_ARRAY	:Int; 
	/**
	 *  3		Binary UUID Type
	 */
	static var BSON_BINARY_SUBTYPE_UUID			:Int;
	/**
	 *  4		Binary MD5 Type
	 */
	static var BSON_BINARY_SUBTYPE_MD5			:Int;
	/**
	 * 128		Binary User Defined Type
	 */
	static var BSON_BINARY_SUBTYPE_USER_DEFINED	:Int; 
	
	/**
	 * Create a new BSON instance
	 */
	function new():Void;
	
	/**
	 * Deserialize data as BSON.
	 * Returns the deserialized Javascript Object.
	 * @param	p_buffer
	 * @param	p_options
	 * @param	p_is_array
	 * @return
	 */
	@:overload(function (p_buffer:Buffer):Dynamic{})
	@:overload(function (p_buffer:Buffer,p_options:BSONOption):Dynamic{})
	function deserialize(p_buffer:Buffer,p_options:BSONOption,p_is_array:Bool):Dynamic;
	
	
	/**
	 * Deserialize stream data as BSON documents.
	 * Returns the next index in the buffer after deserialization x numbers of documents.
	 * @param	p_data
	 * @param	p_start_index
	 * @param	p_document_count
	 * @param	p_documents
	 * @param	p_document_start
	 * @param	p_options
	 * @return
	 */
	@:overload(function (p_data:Dynamic, p_start_index:Int, p_document_count:Int, p_documents:Array<Dynamic>, p_document_start :Int):Int { } )	
	function deserializeStream(p_data:Dynamic,p_start_index:Int,p_document_count:Int,p_documents:Array<Dynamic>,p_document_start :Int,p_options:BSONOption):Int;
	
	/**
	 * 
	 * @param	p_object
	 * @param	p_check_keys
	 * @param	p_as_buffer
	 * @param	p_serialize_functions
	 * @return
	 */
	@:overload(function (p_object : Dynamic, p_check_keys:Bool):Buffer{})
	@:overload(function (p_object : Dynamic, p_check_keys:Bool, p_as_buffer:Bool):Buffer{})
	function serialize(p_object : Dynamic, p_check_keys:Bool, p_as_buffer:Bool, p_serialize_functions:Bool):Buffer;
	
	/**
	 * Calculate the bson size for a passed in Javascript object.
	 * Returns the number of bytes the BSON object will take up.
	 * @param	p_object
	 * @param	p_serialize_functions
	 * @return
	 */
	@:overload(function (p_object : Dynamic):Int{})
	function calculateObjectSize(p_object : Dynamic, p_serialize_functions : Bool):Int;
	
	/**
	 * Serialize a Javascript object using a predefined Buffer and index into the buffer, useful when pre-allocating the space for serialization.
	 * Returns the new write index in the Buffer.
	 * @param	p_object
	 * @param	p_check_keys
	 * @param	p_buffer
	 * @param	p_index
	 * @param	p_serialize_functions
	 * @return
	 */
	function serializeWithBufferAndIndex(p_object : Dynamic, p_check_keys:Bool, p_buffer:Buffer, p_index:Int, p_serialize_functions:Bool):Int;
	
	/*
	BSON.calculateObjectSize
	BSON.serializeWithBufferAndIndex
	BSON.serialize
	BSON.deserializeStream
	BSON.deserialize	
	//*/
}