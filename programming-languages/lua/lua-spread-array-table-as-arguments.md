#plang/lua

Use `table.unpack` to unpack an array like table into lists. The returned lists can be used in-place to pass as varargs:

```lua
local some_list = {"a", "b", "c"}
-- This works!
local formatted_str = string.format("%s %s %s", table.unpack(some_list))
```
