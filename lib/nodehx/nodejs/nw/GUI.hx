package nodejs.nw;
import nodejs.nw.MenuItem.MenuItemOption;

/**
 * Nodewebkit GUI module.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('nw.gui'))")
extern class GUI
{
	/**
	 * 
	 * @param	p_options
	 * @return
	 */
	@:overload(function():MenuItem { } )	
	static function MenuItem(p_options:MenuItemOption):MenuItem;
}