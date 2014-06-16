package nodejs.nw;

/**
 * Clipboard API requires node-webkit >= v0.3.0
 * Clipboard is an abstraction of clipboard(Windows and GTK) and pasteboard(Mac), 
 * currently it only supports reading and writing plain text in the system clipboard.
 */
@:native("(require('nw.gui').Clipboard)")
extern class ClipBoard
{
	/**
	 * Returns the system clipboard.
	 * It's not possible to create a new clipboard, you can only get it from OS.
	 * And also note that the Selection Clipboard in X11 is not supported.
	 * @return
	 */
	static function get():ClipBoardInstance;
}


/**
 * Clipboard API requires node-webkit >= v0.3.0
 * Clipboard is an abstraction of clipboard(Windows and GTK) and pasteboard(Mac), 
 * currently it only supports reading and writing plain text in the system clipboard.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui').Clipboard)")
extern class ClipBoardInstance
{
	
	/**
	 * Write data to the clipboard. type specifies the mime type of the data, only text (plain text data) is supported now.
	 * @param	data
	 * @param	p_type
	 */
	@:overload(function (p_data : Dynamic):Void{})
	function set(p_data : Dynamic, p_mime_type:Dynamic):Void;

	/**
	 * Returns the data of type from clipboard. Only text (plain text data) is supported now.
	 * @param	type
	 */
	@:overload(function ():Dynamic{})
	function get(p_mime_type:String) : Dynamic;
	

	/**
	 * Clear the clipboard.
	 */
	function clear():Void;
	
}