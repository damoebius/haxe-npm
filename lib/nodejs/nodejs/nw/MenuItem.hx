package nodejs.nw;
import js.html.MouseEvent;
import nodejs.events.EventEmitter;

/**
 * 
 */
class MenuItemType
{
	/**
	 * 
	 */
	static public var Separator  : String = "separator";
	/**
	 * 
	 */
	static public var Checkbox   : String = "checkbox";
	/**
	 * 
	 */
	static public var Normal     : String = "normal";
}

/**
 * 
 */
extern class MenuItemOption
{
	/**
	 * 
	 */
	var label : String;
	
	/**
	 * 
	 */
	var icon : String;
	
	/**
	 * 
	 */
	var tooltip : String;
	
	/**
	 * It can be separator, checkbox and normal for now.
	 */
	var type:String;
	
	/**
	 * 
	 */
	var click : MouseEvent->Void; 
	
	/**
	 * 
	 */
	var checked : Bool;
	
	/**
	 * 
	 */
	var enabled : Bool;
	
	/**
	 * 
	 */
	var submenu : Menu;
}

/**
 * MenuItem API requires node-webkit >= 0.3.0
 * MenuItem represents an item in a menu. A MenuItem can be a separator or a normal item which has label and icon. MenuItem is usually used with Menu together.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui').MenuItem)")
extern class MenuItem extends EventEmitter
{
	
	/**
	 * Get the type of a MenuItem, it can be separator, checkbox and normal for now.
	 * A MenuItem's type can be set only when you create it, it cannot be changed at runtime.
	 */
	var type:String;
	
	/**
	 * Get or Set the label of a MenuItem, it can only be plain text for now.
	 */
	var label : String;
	
	/**
	 * Get or Set the icon of a MenuItem, it must a path to your icon file.
	 * It can be a relative path which points to an icon in your app, or an absolute path pointing to a file in user's system.
	 * It has no effect on setting icon of a separator item.
	 */
	var icon : String;
	
	
	/**
	 * Get or Set whether the MenuItem is enabled. An disabled MenuItem will be greyed out and you will not be able to click on it.
	 */
	var enabled : Bool;
	
}