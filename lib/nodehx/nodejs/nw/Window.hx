package nodejs.nw;
import js.html.DOMWindow;
import nodejs.events.EventEmitter;

/**
 * Class that contains information for the creation of a new window.
 */
extern class WindowManifest
{

	/**
	 * 
	 */
	var title			: String;//"node-webkit demo"
	/**
	 * 
	 */
	var icon			: String;//"link.png"
	/**
	 * 
	 */
	var toolbar			: Bool;//true
	/**
	 * 
	 */
	var frame			: Bool;//false
	
	/**
	 * 
	 */
	var width			: Int;//800
	
	/**
	 * 
	 */
	var height			: Int;//500
	
	/**
	 * 
	 */
	var position		: String;//"mouse"
	
	/**
	 * 
	 */
	var min_width		: Int;//400
	
	/**
	 * 
	 */
	var min_height		: Int;//200
	
	/**
	 * 
	 */
	var max_width		: Int;//800
	
	/**
	 * 
	 */
	var max_height		: Int;//600
	
	/**
	 * 
	 */
	var focus : Bool;
	
	/**
	 * Needs to be put by string.
	 */
	//var inject-js-start : String;
	//var inject-js-end : String;
 
}

/**
 * Window API requires node-webkit >= v0.3.0
 * Window is a wrapper of DOM's window object, it has extended operations and can receive various window events.
 * Every Window is an instance of EventEmitter object, and you're able to use Window.on(...) to response to native window's events.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui')).Window")
extern class Window extends EventEmitter
{
	
	/**
	 * If window_object is not specifed, then return current window's Window object, otherwise return window_object's Window object.
	 * @param	p_window
	 * @return
	 */
	@:overload(function():Window { } )	
	static function get(p_window:Dynamic):Window;
	
	
	/**
	 * Open a new window and load url in it, you can specify extra options with the window. All window subfields in Manifest format can be used. Since v0.4.0, a boolean field new-instance can be used to start a new Node instance (webkit process). Since v0.9.0 and 0.8.5, inject-js-start and inject-js-end field can be used to inject a javascript file, see Manifest format .
	 * Since v0.7.3 the opened window is not focused by default. It's a result of unifying behavior across platforms. If you want it to be focused by default, you can set focus to true in options.
	 * @param	p_url
	 * @param	p_options
	 * @return
	 */
	@:overload(function(p_url:String):Window { } )		
	static function open(p_url:String,p_options:WindowManifest):Window;
	
	/**
	 * 
	 */
	var cookies : Dynamic;
	
	/**
	 * Get DOM's window object in the native window.
	 */
	var window : DOMWindow;
	
	/**
	 * Get or Set left/top offset from window to screen.
	 */
	var x : Int;
	
	/**
	 * Get or Set left/top offset from window to screen.
	 */
	var y : Int;
	
	/**
	 * Get or Set window's title.
	 */
	var title : String;
}