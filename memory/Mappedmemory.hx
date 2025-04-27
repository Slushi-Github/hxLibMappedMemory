package memory;

@:cppInclude("memory/mappedmemory.h") @:include("memory/mappedmemory.h")
extern class MappedMemory {
	@:native("MemoryMappingEffectiveToPhysical")
	@:include("memory/mappedmemory.h")
	extern public static function MemoryMappingEffectiveToPhysical(address:Int):Int;

	@:native("MemoryMappingPhysicalToEffective")
	@:include("memory/mappedmemory.h")
	extern public static function MemoryMappingPhysicalToEffective(address:Int):Int;

	@:native("MEMAllocFromMappedMemory")
	@:include("memory/mappedmemory.h")
	extern public static function MEMAllocFromMappedMemory(size:Int):Ptr<Void>;

	@:native("MEMAllocFromMappedMemoryEx")
	@:include("memory/mappedmemory.h")
	extern public static function MEMAllocFromMappedMemoryEx(size:Int, alignment:Int):Ptr<Void>;

	@:native("MEMAllocFromMappedMemoryForGX2Ex")
	@:include("memory/mappedmemory.h")
	extern public static function MEMAllocFromMappedMemoryForGX2Ex(size:Int, alignment:Int):Ptr<Void>;

	@:native("MEMFreeToMappedMemory")
	@:include("memory/mappedmemory.h")
	extern public static function MEMFreeToMappedMemory(ptr:Ptr<Void>):Void;
}
