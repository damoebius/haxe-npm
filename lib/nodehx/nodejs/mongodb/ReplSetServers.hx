package nodejs.mongodb;
import nodejs.http.HTTPServer;
import nodejs.mongodb.MongoOption.MongoReplSetOption;
import nodejs.mongodb.MongoOption.MongoServerOption;

/**
 * Set of Replica Servers.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('mongodb').ReplSetServers")
extern class ReplSetServers
{

	/**
	 * ReplSet constructor provides replicaset functionality
	 */
	@:overload(function(p_list:Array<HTTPServer>):Void{})
	function new(p_list : Array<HTTPServer>,p_option:MongoReplSetOption);
	
	/**
	 * Creates a new server for the <code>replset</code> based on <code>host</code>.
	 * @param	p_host
	 * @param	p_replset
	 * @return
	 */
	function createServer(p_host : String,p_replset : ReplSetServers):HTTPServer;
}