package nodejs.mongodb;
import nodejs.mongodb.MongoOption.MongoMongosOption;


/**
 * Mongos constructor provides a connection to a mongos proxy including failover to additional servers
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('mongodb').Mongos")
extern class Mongos
{

	/**
	 * Mongos constructor provides a connection to a mongos proxy including failover to additional servers
	 */
	@:overload(function(p_list:Array<MongoServer>):Void {})
	function new(p_list : Array<MongoServer>,p_options:MongoMongosOption):Void;
	
}