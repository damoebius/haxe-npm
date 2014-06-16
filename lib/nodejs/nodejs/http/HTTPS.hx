package nodejs.http;
import nodejs.NodeJS;
import js.html.ArrayBufferView;



/**
 * HTTPS is the HTTP protocol over TLS/SSL. In Node this is implemented as a separate module.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('https'))")
extern class HTTPS
{
		
	/**
	 * 
	 */
	static var globalAgent : HTTPSAgent;
	
	/**
	 * Returns a new web server object.
	 * The requestListener is a function which is automatically added to the 'request' event.
	 * @param	listener
	 * @return
	 */
	@:overload(function():HTTPSServer { } )	
	static function createServer(listener : IncomingMessage -> ServerResponse -> Void):HTTPSServer;
	
	/*
	request(options, callback)
	get(options, callback)
	//*/  
	
	
}

/**
 * An Agent object for HTTPS similar to http.Agent. See https.request() for more information.
 */
extern class HTTPSAgent
{
	/**
	 * By default set to 5. Determines how many concurrent sockets the agent can have open per origin. Origin is either a 'host:port' or 'host:port:localAddress' combination.
	 */
	var maxSockets : Int;
	
	/**
	 * An object which contains arrays of sockets currently in use by the Agent. Do not modify.
	 */
	var sockets : Array<TCPSocket>;
	
	/**
	 * An object which contains queues of requests that have not yet been assigned to sockets. Do not modify.
	 */
	var requests : Array<IncomingMessage>;
}
