return function()
	return unpack(table.create(
		2,
		coroutine.wrap(function(...)
			if select(1, ...) then
				return debug.info(1, "f")(coroutine.yield(), ...)
			elseif select("#", ...) <= 1 then
				debug.info(1, "f")(coroutine.yield())
			end
			select(select("#", ...), ...):Disconnect()
			debug.info(1, "f")(unpack({ ... }, 1, select("#", ...) - 1))
		end)
	))
end :: () -> ((RBXScriptSignal) -> (), () -> ())
