---
aliases:
  - A clever way to get vector item index from a C++ iterator
---
Let's say you have a C++ vector and an iterator that's yielding values from it, and you want the item's index. In a sane language like [[rust]], you would use a `.enumerate` – heck even Python supports that! But since C++ doesn't have an equivalent you can exploit pointer arithmetic:
```cpp
std::for_each(data.begin(), data.end(), [&data](float const& value) {
    int idx = &value - &data[0];
});
```

Note that there are other approaches, such as maintaining an external mutable capture to track indices, but that would break with a parallel [[cpp-execution-policies|execution policy]].

Reference: https://stackoverflow.com/a/22372980