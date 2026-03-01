## Local-Less Maid
Local-Less Maid or LLM (NOT to be confused with Large Language Model) is an advanced next-generation luau library which empowers the developer to fearlessly connect their signals with ease. It is easily the best performing maid, as it has less locals than any other existing maid library.

## Usage
```luau
local a,c=require("./path/to/llm")()
a(RunService.RenderStepped:Connect(a)--[[add your connections]])
a(RunService.RenderStepped:Connect(b))
c(--[[call this when you want to clean the maid]])
```
