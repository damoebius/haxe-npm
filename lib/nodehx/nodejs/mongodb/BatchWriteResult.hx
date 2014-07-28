package nodejs.mongodb;

/**
 * ...
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').BatchWriteResult)")
extern class BatchWriteResult
{
	
	var ok 			: Int;	//	{boolean} did bulk operation correctly execute
	var nInserted 	: Int;	//	{number} number of inserted documents
	var nUpdated 	: Int;	//	{number} number of documents updated logically
	var nUpserted 	: Int;	//	{number} number of upserted documents
	var nModified 	: Int;	//	{number} number of documents updated physically on disk
	var nRemoved 	: Int;	//	{ number } number of removed documents

	var getUpsertedIds			: Dynamic;
	var getUpsertedIdAt         : Dynamic;
	var getRawResponse          : Dynamic;
	var hasWriteErrors          : Dynamic;
	var getWriteErrorCount      : Dynamic;
	var getWriteErrorAt         : Dynamic;
	var getWriteErrors          : Dynamic;
	var getWriteConcernError    : Dynamic;
	
	
}