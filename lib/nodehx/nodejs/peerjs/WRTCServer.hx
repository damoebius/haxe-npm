package nodejs.peerjs;
import nodejs.events.EventEmitter;

/**
 * 
 */
class WRTCServerEventType
{
	/**
	 * The 'connection' event is emitted when a peer connects to the server.
	 * server.on('connection', function(id) { ... })
	 */
	static public var Connection:String = "connection";
	
	/**
	 * The 'disconnect' event is emitted when a peer disconnects from the server or when the peer can no longer be reached.
	 */
	static public var Disconnect : String = "disconnect";
}

/**
 * 
 */
extern class WRTCServerOption
{
	/**
	 * 
	 */
	var port : Int;
	
	/**
	 * 
	 */
	var path : String;
	
	/**
	 * 
	 */
	var ssl : WRTCServerSSLData;
}

/**
 * 
 */
extern class WRTCServerSSLData
{
	/**
	 * 
	 */
	var key : String;
	
	/**
	 * 
	 */
	var certificate : String;
}

/**
 * PeerServer helps broker connections between PeerJS clients. Data is not proxied through the server.
 * 
 * https://github.com/peers/peerjs-server
 * 
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("require('peerjs-server').PeerServer")
extern class WRTCServer extends EventEmitter
{

	@:overload(function():Void{})
	function new(p_options:WRTCServerOption):Void;
	
	
}