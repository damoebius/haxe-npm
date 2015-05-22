package cpp;

extern class NativeArray {

	public static inline function blit<T>( ioDestArray:Array<T>,
		inDestElement:Int, inSourceArray:Array<T>,
		inSourceElement:Int, inElementCount:Int ): Void  {
	untyped ioDestArray.blit(inDestElement, inSourceArray, inSourceElement, inElementCount);
	};

	public static inline function getBase( inArray:Array<Dynamic> ) : ArrayBase {
      return untyped inArray;
   }

	public static inline function address<T>( inArray:Array<T>,inIndex:Int ) : Pointer<T> {
      return Pointer.arrayElem(inArray,inIndex);
   }

	public static inline function setData<T>( inArray:Array<T>,inData:Pointer<T>,inElementCount:Int ) : Void {
      untyped inArray.setData(inData.raw,inElementCount);
   }
	public static inline function setUnmanagedData<T>( inArray:Array<T>,inData:Pointer<T>,inElementCount:Int ) : Void {
      untyped inArray.setUnmanagedData(inData.raw,inElementCount);
   }


	public static inline function zero<T>( ioDestArray:Array<T>, ?inFirst:Int, ?inElements:Int ) : Void {
		untyped ioDestArray.zero(inFirst, inElements);
	};

	public static inline function unsafeGet<T>( inDestArray:Array<T>, inIndex:Int) : T {
		return untyped inDestArray.__unsafe_get(inIndex);
	}

	public static inline function unsafeSet<T>( ioDestArray:Array<T>, inIndex:Int, inValue:T) : T {
		return untyped ioDestArray.__unsafe_set(inIndex,inValue);
	}

	public static inline function memcmp<T>( inArrayA:Array<T>, inArrayB:Array<T>) : Int {
		return untyped inArrayA.memcmp(inArrayB);
	}

	public static inline function setSize<T>( ioArray:Array<T>, inSize:Int) : Array<T> {
		return untyped ioArray.__SetSizeExact(inSize);
   }
}
