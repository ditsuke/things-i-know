Encountered particularly with [[lua-globals]], sometimes you want to be able to tell if a variable exists. Here's how:
```lua
if type(x) == nil then
	print("`x` does not exist")
end
```

However note that there's no way to tell (as far as I know at the moment) whether a variable is just `nil` or that it hasn't been _defined_.
