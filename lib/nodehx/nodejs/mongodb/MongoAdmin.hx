package nodejs.mongodb;

/**
 * Allows the user to access the admin functionality of MongoDB
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('mongodb').Admin")
extern class MongoAdmin
{
	var buildInfo			: Dynamic;
	var serverStatus        : Dynamic;
	var profilingLevel      : Dynamic;
	var ping                : Dynamic;
	var authenticate        : Dynamic;
	var logout              : Dynamic;
	var addUser             : Dynamic;
	var removeUser          : Dynamic;
	var setProfilingLevel   : Dynamic;
	var profilingInfo       : Dynamic;
	var command             : Dynamic;
	var validateCollection  : Dynamic;
	var listDatabases       : Dynamic;
	var replSetGetStatus    : Dynamic;
	
}