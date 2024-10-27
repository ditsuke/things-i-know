# Modern C++: Execution Policies
Most stdlib algorithms have overloads that accept an "execution policy", essentially a directive that's one of 4:
1. `par` / `parallel_policy`: execution may be parallelized.
2. `unseq`: execution may be vectorized.
3. `seq`: no parallelization / vectorization.
4. `par_unseq`: may be parallized _and_ vectorized, migrated across threads <<-

Whether or not parallelization or vectorization actually occurs depends on:
1. Whether the algorithm supports parallization.
2. System resources (dynamic decision).

Note that these policies **do not** protect against dataraces or deadlocks: must be verified in advance, tested with a sanitizer etc. This means you end up using atomics for shared monotonic operations, mutexes otherwise for example.

Note also that in case of `unseq` / `unsequenced`, function calls are unsequenced with respect to each other, meaning that they _might_ be **interleaved** -- in all other cases of parallization they're indeterminately sequenced meaning that they will not be interleaved. Implications:
- You can't allocate/deallocate,
- Use mutexes,
- Use non lock-free [[cpp-std-atomic]] operations,
- Or generally do any vectorization-unsafe operation.

For more information:
1. https://en.cppreference.com/w/cpp/algorithm/execution_policy_tag_t
2. https://alandefreitas.github.io/moderncpp/programming-paradigms/parallelism/execution-policies/
3. https://stackoverflow.com/questions/61022220/c20-execution-policy-type