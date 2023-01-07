# The rust? `mod.rs`
From [StackOverflow](https://stackoverflow.com/a/68972967):
> **In Rust, folders are not immediately ready to use as modules.**
> 
> You have to explicitly inform rust that they are available at a certain path in the file system.
> 
> That's the purpose of `mod.rs`.

So for the following folder structure, `utils/mod.rs` exposes submodules of `utils`:
```
src
	main.rs
	utils
		bar.rs
		foo.rs
		mod.rs
```

With contents:
```rust
pub mod bar;
pub mod foo;
```

And in `main.rs`:
```rust
mod utils; // Make utils usable

use utils::{foo, bar}; // can use submodules to `utils`
```

## The recommended approach
As of [[rustc]] 1.30, it is recommended to instead use the `<dir-name>.rs` file [src: rust ref](https://doc.rust-lang.org/reference/items/modules.html#module-source-filenames):
> **Note**: Prior to `rustc` 1.30, using `mod.rs` files was the way to load a module with nested children. It is encouraged to use the new naming convention as it is more consistent, and avoids having many files named `mod.rs` within a project.

So the equivalent structure to the example above looks like:
```
src
	main.rs
	utils.rs
	utils
		foo.rs
		bar.rs
```

The contents of `utils.rs` remain consistent with `mod.rs`.
