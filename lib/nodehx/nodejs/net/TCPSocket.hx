package nodejs.net;
import nodejs.events.EventEmitter;


/**
 * Class that serves as an 'enum' for TCPSocketEvents.
 */
class TCPSocketEventType
{
	/**
	 * Emitted when a socket connection is successfully established. See connect().
	 */
	static public var Connect : String = "connect";
	
	/**
	 * Emitted when data is received. The argument data will be a Buffer or String. 
	 * Encoding of data is set by socket.setEncoding(). (See the Readable Stream section for more information.)
	 * Note that the data will be lost if there is no listener when a Socket emits a 'data' event.
	 */
	static public var Data : String = "data";
	
	/**
	 * Emitted when the other end of the socket sends a FIN packet.
	 * By default (allowHalfOpen == false) the socket will destroy its file descriptor once it has written out its pending write queue.
	 * However, by setting allowHalfOpen == true the socket will not automatically end() its side allowing the user to write arbitrary amounts of data,
	 * with the caveat that the user is required to end() their side now.
	 */
	static public var End : String = "end";
	
	/**
	 * Emitted if the socket times out from inactivity. This is only to notify that the socket has been idle. The user must manually close the connection.
	 * See also: socket.setTimeout()
	 */
	static public var TimeOut : String = "timeout";
	
	/**
	 * Emitted when the write buffer becomes empty. Can be used to throttle uploads.
	 * See also: the return values of socket.write()
	 */
	static public var Drain : String = "drain";
	
	/**
	 * Emitted when an error occurs. The 'close' event will be called directly following this event.
	 */
	static public var Error : String = "error";
	
	/**
	 * Emitted once the socket is fully closed. The argument had_error is a boolean which says if the socket was closed due to a transmission error.
	 */
	static public var Close : String = "close";
	
}

/**
 * Bound address, the address family name and port of the socket as reported by the operating system. 
 */
extern class NetworkAdress
{
	/**
	 * Connection port.
	 */
	var port : Int;
	
	/**
	 * IP Family.
	 */
	var family : String;
	
	/**
	 * IP Address.
	 */
	var address : String;
}


/**
 * Class that configures a new Socket being created.
 */
extern class TCPSocketOption
{
	/**
	 * Allows you to specify the existing file descriptor of socket
	 */
	var fd				: Int;
	
	/**
	 * Refer to createServer() and 'end' event.
	 */
	var allowHalfOpen	: Bool;
	
	/**
	 * Allow reads and/or writes on this socket (NOTE: Works only when fd is passed)
	 */
	var readable		: Bool;
	
	/**
	 * Allow reads and/or writes on this socket (NOTE: Works only when fd is passed)
	 */
	var writable		: Bool;
	
}

/**
 * This object is an abstraction of a TCP or UNIX socket. net.Socket instances implement a duplex Stream interface. 
 * They can be created by the user and used as a client (with connect()) or they can be created by Node and 
 * passed to the user through the 'connection' event of a server.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('net').Socket)")
extern class TCPSocket extends EventEmitter
{
	/**
	 * Construct a new socket object.
	 */
	@:overload(function():Void{})
	function new(p_options : TCPSocketOption):Void;
	
	
	/**
	 * Returns the bound address, the address family name and port of the socket as reported by the operating system.
	 * Returns an object with three properties, e.g. { port: 12346, family: 'IPv4', address: '127.0.0.1' }
	 * @return
	 */
	function address():NetworkAdress;
	
	/**
	 * The string representation of the remote IP address. For example, '74.125.127.100' or '2001:4860:a005::68'.
	 */
	var remoteAddress : String;
	
	/**
	 * The numeric representation of the remote port. For example, 80 or 21.
	 */
	var remotePort : Int;
	
	/**
	 * net.Socket has the property that socket.write() always works. This is to help users get up and running quickly. 
	 * The computer cannot always keep up with the amount of data that is written to a socket - the network connection simply might be too slow. 
	 * Node will internally queue up the data written to a socket and send it out over the wire when it is possible. (Internally it is polling on the socket's file descriptor for being writable).
	 * The consequence of this internal buffering is that memory may grow. This property shows the number of characters currently buffered to be written.
	 * (Number of characters is approximately equal to the number of bytes to be written, but the buffer may contain strings, and the strings are lazily encoded,
	 * so the exact number of bytes is not known.)
	 * Users who experience large or growing bufferSize should attempt to "throttle" the data flows in their program with pause() and resume().
	 */
	var bufferSize : Int;
	
}