package nodejs.mongodb;

/**
 * A class representation of the BSON DBRef type.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').DBRef)")
extern class MongoDatabaseRef
{

	/**
	 * Creates a new MongoDatabaseRef
	 * @param	p_namespace
	 * @param	p_oid
	 * @param	p_database_name
	 */
	@:overload(function(p_namespace:String, p_oid : ObjectID) :Void { } )	
	function new(p_namespace:String, p_oid : ObjectID, p_database_name:String) :Void;
	
}