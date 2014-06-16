package nodejs.mongodb;

/**
 * ...
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').OrderedBulkOperation)")
extern class OrderedBulkOperation
{
	
	var update			: Dynamic;
	var updateOne       : Dynamic;
	var replaceOne      : Dynamic;
	var upsert          : Dynamic;
	var removeOne       : Dynamic;
	var remove          : Dynamic;
	var insert          : Dynamic;
	var find            : Dynamic;
	var execute         : Dynamic;
	
	
}