As of Python 3.7, the recommended and _pythonic_ way of achieving an immutable object would be
a `frozen=True` [[py-dataclass]]. In the end, a solution might look like:
```py
@dataclass(frozen=True)
class SomeImmut:
	mem1: str
	mem2: Any

	# want a custom initializer?
	@classmethod
	def from_whatever(cls, ...):
		some_dict = {}
		# set some props
		some_dict["mem1"] = "xxx"
		# ...
		return cls(**some_dict)
```

It's worth mentioning that there are some other ways, of course, predating the frozen dataclass that form the basis for how it works:
A `collection.namedtuple`. Tuple, but named. Essentially an immutable object, or behaves like one but has some downsides: `__eq__` does not behave like expected because it is type-blind

References:
1. https://stackoverflow.com/questions/4828080/how-to-make-an-immutable-object-in-python
2. https://stackoverflow.com/questions/53756788/how-to-set-the-value-of-dataclass-field-in-post-init-when-frozen-true