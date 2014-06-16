package nodejs.mongodb;

/**
 * A class representation of a simple Grid interface.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('mongodb').GridStore")
extern class MongoGridStore
{
	
	/**
	 * 	‘fs’	The collection to be used for holding the files and chunks collection.
	 */
	static var DEFAULT_ROOT_COLLECTION	: String;
	/**
	 * 	‘binary/octet-stream’	Default file mime type
	 */
	static var DEFAULT_CONTENT_TYPE		: String;
	/**
	 * 0	Seek mode where the given length is absolute.
	 */
	static var IO_SEEK_SET				: Int;	
	/**
	 * 1	Seek mode where the given length is an offset to the current read/write head.
	 */
	static var IO_SEEK_CUR				: Int;	
	/**
	 * 2	Seek mode where the given length is an offset to the end of the file.
	 */
	static var IO_SEEK_END				: Int;	
	
	
	/**
	 *  The current chunksize of the file.
	 */
	var chunkSize : Int;
	
	/**
	 * The md5 checksum for this file.
	 */
	var md5 : Int;
	
	var open					: Dynamic;
	var writeFile               : Dynamic;
	var close                   : Dynamic;
	var chunkCollection         : Dynamic;
	var unlink                  : Dynamic;
	var collection              : Dynamic;
	var readlines               : Dynamic;
	var rewind                  : Dynamic;
	var read                    : Dynamic;
	var tell                    : Dynamic;
	var seek                    : Dynamic;
	var eof                     : Dynamic;
	var getc                    : Dynamic;
	var puts                    : Dynamic;
	var stream                  : Dynamic;
	static var exist         : Dynamic;
	static var list          : Dynamic;
	//static var read          : Dynamic;
	//static var readlines     : Dynamic;
	//static var unlink        : Dynamic;
	var write                   : Dynamic;
	
}