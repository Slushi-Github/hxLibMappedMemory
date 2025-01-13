package memory;

@:cppInclude("memory/mappedmemory.h") @:include("memory/mappedmemory.h")
extern class Mappedmemory {
	@:native("MemoryMappingEffectiveToPhysical")
	extern public static function MemoryMappingEffectiveToPhysical(address:Int):Int;

	@:native("MemoryMappingPhysicalToEffective")
	extern public static function MemoryMappingPhysicalToEffective(address:Int):Int;

	@:native("MEMAllocFromMappedMemory")
	extern public static function MEMAllocFromMappedMemory(size:Int):Ptr<Void>;

	@:native("MEMAllocFromMappedMemoryEx")
	extern public static function MEMAllocFromMappedMemoryEx(size:Int, alignment:Int):Ptr<Void>;

	@:native("MEMAllocFromMappedMemoryForGX2Ex")
	extern public static function MEMAllocFromMappedMemoryForGX2Ex(size:Int, alignment:Int):Ptr<Void>;

	@:native("MEMFreeToMappedMemory")
	extern public static function MEMFreeToMappedMemory(ptr:Ptr<Void>):Void;
}
