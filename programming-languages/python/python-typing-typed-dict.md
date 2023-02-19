---
Aliases: "Python Types: TypedDict"
---
#python

The `typing` module includes a `TypedDict` through **[[PEP]] [589][pep-ref] – TypedDict: Type Hints for Dictionaries with a Fixed Set of Keys**

The type definition is a class declaration like so:
```python
from typing import TypedDict

class SomeTypedDict(TypedDict):
	id: int
	name: str
	some_optional_key: NotRequired[int]
```

*references*
[pep-ref]: https://peps.python.org/pep-0589/