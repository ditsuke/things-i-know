For code like:
```lua
for _, t in {} do
	print(t)
end
```

Lua will emit a "Attempt to call a table value" error. Why?

> The generic `for` expects 3 arguments: a callable value, some value which is repeatedly passed to it, and the key where the iteration shall start.  
> Stock lua does not call pairs on the first value passed to for if that's not callable, though some derivatives do.

Valid iteration, instead, is:
```lua
for _, t in ipairs({"hello", "world"}) do -- or pairs() for a hashtable
	print(t)
end
```
Reference: https://stackoverflow.com/questions/23350281/bizzare-attempt-to-call-a-table-value-in-lua
