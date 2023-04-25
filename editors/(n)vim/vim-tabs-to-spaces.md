#vim

# Vim: Indent from Tabs to Spaces

`:set expandtab`

Or the other way around with:
`:set noexpandtab`

> NOTE: `expandtab` is shortened as `et`

## What about Existing Files?
`:retab`

> `:retab` doesn't work.

Don't ask me why but `:%retab!` should work in that case.
