package nodejs.mongodb;
import nodejs.mongodb.MongoOption.MongoCollectionBuildOption;
import nodejs.mongodb.MongoOption.MongoCollectionOption;

/**
 * ...
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').Collection)")
extern class MongoCollection
{
	

	/**
	 * Create a new Collection instance (INTERNAL TYPE, do not instantiate directly)
	 * @param	p_db
	 * @param	p_name
	 * @param	p_pkfactory
	 * @param	p_options
	 */
	@:overload(function (p_db:MongoDatabase,p_name:String):Void{})
	@:overload(function (p_db:MongoDatabase,p_name:String,p_pkfactory : ObjectID):Void{})
	function new(p_db:MongoDatabase,p_name:String,p_pkfactory : ObjectID,p_options : MongoCollectionBuildOption):Void;

	
	var insert						: Dynamic;
	var remove                      : Dynamic;
	var rename                      : Dynamic;
	var save                        : Dynamic;
	var update                      : Dynamic;
	var distinct                    : Dynamic;
	var count                       : Dynamic;
	var drop                        : Dynamic;
	var findAndModify               : Dynamic;
	var findAndRemove               : Dynamic;
	var find                        : Dynamic;
	var findOne                     : Dynamic;
	var createIndex                 : Dynamic;
	var ensureIndex                 : Dynamic;
	var indexInformation            : Dynamic;
	var dropIndex                   : Dynamic;
	var dropAllIndexes              : Dynamic;
	var reIndex                     : Dynamic;
	var mapReduce                   : Dynamic;
	var group                       : Dynamic;
	var options                     : Dynamic;
	var isCapped                    : Dynamic;
	var indexExists                 : Dynamic;
	var geoNear                     : Dynamic;
	var geoHaystackSearch           : Dynamic;
	var indexes                     : Dynamic;
	var aggregate                   : Dynamic;
	var stats                       : Dynamic;
	var initializeUnorderedBulkOp   : Dynamic;
	var initializeOrderedBulkOp     : Dynamic;
	var parallelCollectionScan      : Dynamic;
	
}