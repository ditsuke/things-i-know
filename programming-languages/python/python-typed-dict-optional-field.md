---
Aliases: "Python: Optional TypedDict fields with typing.NotRequired"
---
#python

To add an optional/potentially missing field to a [[python-typing-typed-dict|Python Types: TypedDict]], use the NotRequired type provided by the [[typing]] module.:

```python
from typing import TypedDict, NotRequired, Any

class TypeWithOptField(TypedDict):
	main: str
	extra_data: NotRequired[Dict[str, Any]]

no_bs: TypeWithOptionalFIeld = {"main": "hello_world"} # valid type
bs: TypeWithOptionalField = {"main": "hello", "extra_data": {"bs": True}}
```

This type comes from **PEP 589 – TypedDict: Type Hints for Dictionaries with a Fixed Set of Keys**

> NOTE:
> In Python <3.11, `NotRequired` mus tbe imported from `typing_extensions` instead of `typing`
> Reference: https://peps.python.org/pep-0655/#usage-in-python-3-11

Reference: https://peps.python.org/pep-0589/
