package nodejs.mongodb;
import nodejs.mongodb.MongoOption.MongoLogger;
import nodejs.mongodb.MongoOption.MongoServerOption;






/**
 * Class representing a single MongoDB Server connection
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('mongodb').Server")
extern class MongoServer
{
	
	/**
	 * Creates a new MongoServer instance.
	 * @param	p_host the server host
	 * @param	p_port the server port
	 * @param	p_options  optional options for insert command
	 */	
	@:overload(function(p_host:String, p_port:Int):Void { } )
	function new(p_host : String, p_port : Int, p_options : MongoServerOption) : Void;
	
	/**
	 * Assigns a replica set to this server.
	 * @param	p_replset
	 */
	function assignReplicaSet(p_replset : Dynamic):Void;
	
	/**
	 * Takes needed options from 'replset' and overwrites our own options.
	 * @param	p_replset
	 */
	function inheritReplSetOptionsFrom(p_replset : Dynamic):Void;
	
	/**
	 * 
	 */
	var connected : Bool;
}