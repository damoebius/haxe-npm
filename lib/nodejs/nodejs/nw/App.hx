package nodejs.nw;
import nodejs.events.EventEmitter;

/**
 * 
 */
class AppEventType
{
	/**
	 * 
	 */
	static public var Open : String = "open";
	
	/**
	 * 
	 */
	static public var Reopen : String = "reopen";
}

/**
 * Since v0.3.1
 */
class App
{
	/**
	 * 
	 */
	static public var instance(get_instance, null):AppInstance;
	static private function get_instance():AppInstance { return untyped __js__("require('nw.gui').App"); }

}

/**
 * Since v0.3.1
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
extern class AppInstance extends EventEmitter
{
	
	/**
	 * Get the command line arguments when starting the app.
	 */
	var argv : Array<String>;
	
	/**
	 * Get all the command line arguments when starting the app. Because node-webkit itself used switches like --no-sandbox and --process-per-tab, it would confuse the app when the switches were meant to be given to node-webkit, so App.argv just filtered such switches (arguments' precedence were kept). You can get the switches to be filtered with App.filteredArgv.
	 */
	var fullArgv:Array<String>;

	/**
	 * Quit current app. This method will not send close event to windows and app will just quit quietly.
	 */
	function quit():Void;
}