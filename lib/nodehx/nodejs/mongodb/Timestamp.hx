package nodejs.mongodb;

/**
 * Defines a Timestamp class for representing a 64-bit two’s-complement integer value, which faithfully simulates the behavior of a Java “Timestamp”. This implementation is derived from TimestampLib in GWT.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('mongodb').Timestamp)")
extern class Timestamp
{
	
	var toInt					: Dynamic;
	var toNumber                : Dynamic;
	var toJSON                  : Dynamic;
	var toString                : Dynamic;
	var getHighBits             : Dynamic;
	var getLowBits              : Dynamic;
	var getLowBitsUnsigned      : Dynamic;
	var getNumBitsAbs           : Dynamic;
	var isZero                  : Dynamic;
	var isNegative              : Dynamic;
	var isOdd                   : Dynamic;
	var equals                  : Dynamic;
	var notEquals               : Dynamic;
	var lessThan                : Dynamic;
	var lessThanOrEqual         : Dynamic;
	var greaterThan             : Dynamic;
	var greaterThanOrEqual      : Dynamic;
	var compare                 : Dynamic;
	var negate                  : Dynamic;
	var add                     : Dynamic;
	var subtract                : Dynamic;
	var multiply                : Dynamic;
	var div                     : Dynamic;
	var modulo                  : Dynamic;
	var not                     : Dynamic;
	var and                     : Dynamic;
	var or                      : Dynamic;
	var xor                     : Dynamic;
	var shiftLeft               : Dynamic;
	var shiftRight              : Dynamic;
	var shiftRightUnsigned      : Dynamic;
	static var fromInt       : Dynamic;
	static var fromNumber    : Dynamic;
	static var fromBits      : Dynamic;
	static var fromString    : Dynamic;
	
	
}