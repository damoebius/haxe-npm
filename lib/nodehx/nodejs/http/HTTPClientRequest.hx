package nodejs.http;

/**
 * 
 */
class HTTPClientRequestEventType
{
	//response'
	//'socket'
	//'connect'
	//'upgrade'
	//'continue'
}

/**
 * ...
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
extern class HTTPClientRequest
{
	
	var write				: Dynamic;//(chunk, [encoding])
	var end					: Dynamic;//([data], [encoding])
	var abort				: Dynamic;//()
	var setTimeout			: Dynamic;//(timeout, [callback])
	var setNoDelay			: Dynamic;//([noDelay])
	var setSocketKeepAlive	: Dynamic;//([enable], [initialDelay])
	
}