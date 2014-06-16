package nodejs.nw;

/**
 * 
 */
extern class TrayOption
{
	/**
	 * 
	 */
	var title : String;
	
	/**
	 * 
	 */
	var tooltip : String;
	
	/**
	 * 
	 */
	var icon : String;
	
	/**
	 * 
	 */
	var menu : Menu;
}

/**
 * Tray API requires node-webkit >= v0.3.0
 * Tray is an abstraction of different controls on different platforms, usually it's a small icon shown on the OS's notification area. 
 * On Mac it's called Status Item, on GTK it's Status Icon, and on Windows it's System Tray Icon.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui').Tray)")
extern class Tray
{
	/**
	 * Create a new Tray, option is an object contains initial settings for the Tray. option can have following fields: title, tooltip, icon and menu.
	 * Every field has its own property in the Tray, see documentation of each property for details.
	 * When you assign new Tray(option) to a variable/property take care about visibility and GC.
	 * @param	p_option
	 */
	@:overload(function():Void { } )	
	function new(p_option:TrayOption):Void;
	
	
}