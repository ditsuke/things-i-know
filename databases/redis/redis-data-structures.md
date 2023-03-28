#data-stores/redis

# Redis: Data Structures

At its core, [[redis]] is a key-value store. However its support for richer data structures for its _values_ make it suitable for use-cases that go beyond just caching.

## 0. Strings
- Because, of course. Strings are the base data-type in Redis.

## 1. Lists
- Strings, in order of insertion.
- Implemented as linked-lists for fast insertion.
- Variants:
	- _Capped lists_ using the `LTRIM` operator. `LTRIM x y` _trims_ the list to only retain elements `[x, y]`. This operation can be combined with the `LPUSH` operation to maintain lists that only have the most recent _z_ elements for example.

## 2. Sets
- Collection of distinct and unsorted strings.
- **Query for:** existence of element in set, 

## 3. Sorted Sets
- Sets, but each value is associated with a floating point _score_. These scores are used to keep the set sorted in an order.
- **Query for:**
	- Existence of element
	- *Ranges of elements*, in order of sorting. For example: the top x or bottom x elements.
	 - And more... look at the complete list of commands: https://redis.io/commands/?group=sorted-set

## 4. Hashmaps
- Maps string keys to string values, much like `string, string` maps in languages like [[python]] or [[rust]].
- **Query for:**
	- Existence of key,
	- Value corresponding to key

## 5. Bitmaps
#todo

## 6. HyperLogLogs

_References_
1. https://dev.to/kalkwst/crash-course-redis-redis-data-types-explained-4j96
