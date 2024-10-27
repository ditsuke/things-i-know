# Meson: Dealing with Special `-f` Compile Flags
The thing with `-fsanitize` and `fopenmp`: they need to be passed as both compile and linker args. With meson, you'd normally use both `cxx_args` and `link_args` to achieve this:
```
...
cpp_args: ['-fopenmp', ...],
link_args: ['-fopenmp', ...]
...
```
But fret not, meson has built-in solutions for the both of these:
## OpenMP
With OpenMP, meson has a built-in special dependency:
```build
openmp = dependency('openmp')
```
Which can then be used in executable/library build declarations as a `dep`
Reference: https://mesonbuild.com/Dependencies.html#openmp
## Sanitizers
Meson supports a user-option to define the sanitizer in use across targets:
`b_sanitize={memory,thread,undefined,...}`. Can be set with [[meson-configure]].
Reference: https://mesonbuild.com/Builtin-options.html
