package nodejs.nw;

/**
 * 
 */
class MenuType
{
	/**
	 * 
	 */
	static public var Menubar : String = "menubar";
}

/**
 * 
 */
extern class MenuOption
{
	/**
	 * 
	 */
	var type : String;
}

/**
 * Menu API requires node-webkit >= 0.3.0
 * Menu represents a native menu, it can be used as window menu or context menu.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui').Menu)")
extern class Menu
{

	/**
	 * Create a new Menu.
	 * If no option is specified, a normal context menu will be created. 
	 * To create a menu to be used as window's menu, you need to explicitly 
	 * specify 'type': 'menubar' in the option, e.g. new Menu({ 'type': 'menubar' }).
	 * @param	p_options
	 */
	@:overload(function():Void { } )	
	function new(p_options:MenuOption):Void;
	
}