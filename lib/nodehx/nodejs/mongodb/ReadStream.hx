package nodejs.mongodb;
import nodejs.events.EventEmitter;

/**
 * Container class for ReadStreamEvent types.
 */
class ReadStreamEvent
{
	/**
	 * {function(item) { }} the data event triggers when a document is ready.
	 */
	static public var Data  : String = "data";  
	/**
	 * {function() {}} the end event triggers when there is no more documents available.
	 */
	static public var End   : String = "end";   
	/**
	 * {function() {}} the close event triggers when the stream is closed.
	 */
	static public var Close : String = "close"; 
	/**
	 * {function(err) {}} the error event triggers if an error happens.
	 */
	static public var Error : String = "error"; 
}

/**
 * Stream interface for a file.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').ReadStream)")
extern class ReadStream extends EventEmitter
{
	
	/**
	 * Creates stream interface for the file.
	 * @param	p_autoclose
	 * @param	p_gridstore
	 */
	function new(p_autoclose:Bool, p_gridstore:MongoGridStore):Void;
	
	
}