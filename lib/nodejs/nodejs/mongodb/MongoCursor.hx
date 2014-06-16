package nodejs.mongodb;
import nodejs.mongodb.MongoOption.MongoCursorOption;

/**
 * ...
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').Cursor)")
extern class MongoCursor
{
	/**
	 *  0	Init state
	 */
	static var INIT		:Int;
	
	/**
	 * 1	Cursor open
	 */
	static var OPEN		:Int;
	
	/**
	 *  2	Cursor closed
	 */
	static var CLOSED	:Int;
	
	/**
	 * 3	Cursor performing a get more
	 */
	static var GET_MORE	:Int; 

	/**
	 * Constructor for a cursor object that handles all the operations on query result using find.
	 * This cursor object is unidirectional and cannot traverse backwards.
	 * Clients should not be creating a cursor directly, but use find to acquire a cursor. (INTERNAL TYPE)
	 */
	@:overload(function (p_db:MongoDatabase,p_collection:MongoCollection,p_selector:Dynamic,p_fields:Dynamic):Void{})
	function new(p_db:MongoDatabase, p_collection:MongoCollection, p_selector:Dynamic, p_fields:Dynamic, p_options:MongoCursorOption):Void;
	
	
	var rewind				: Dynamic;
	var toArray             : Dynamic;
	var each                : Dynamic;
	var count               : Dynamic;
	var sort                : Dynamic;
	var limit               : Dynamic;
	var maxTimeMS           : Dynamic;
	var setReadPreference   : Dynamic;
	var skip                : Dynamic;
	var batchSize           : Dynamic;
	var nextObject          : Dynamic;
	var explain             : Dynamic;
	var stream              : Dynamic;
	var close               : Dynamic;
	var isClosed            : Dynamic;
	
}