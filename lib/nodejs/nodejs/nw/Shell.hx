package nodejs.nw;

/**
 * Shell API requires node-webkit >= v0.3.0
 * Shell is a collection of APIs that do desktop related jobs.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui').Shell)")
extern class Shell
{
	
	/**
	 * Open the given external protocol URI in the desktop's default manner. (For example, mailto: URLs in the default mail user agent.)
	 * @param	URI
	 */
	static function openExternal(URI:String):Void;

	/**
	 * Open the given file_path in the desktop's default manner.
	 * @param	file_path
	 */
	static function openItem(file_path:String):Void;

	/**
	 * Show the given file_path in a file manager. If possible, select the file.
	 * @param	file_path
	 */
	static function showItemInFolder(file_path:String):Void;

	
}