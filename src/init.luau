return function()
	return unpack(table.create(
		2,
		coroutine.wrap(function(...)
			return select(1, ...) and (debug.info(1, "f")(coroutine.yield(), ...))
				or select("#", ...) <= 1 and debug.info(1, "f")(coroutine.yield())
				or select(select("#", ...), ...):Disconnect()
				or debug.info(1, "f")(unpack({ ... }, 1, select("#", ...) - 1))
		end)
	))
end :: () -> ((RBXScriptSignal) -> (), () -> ())
