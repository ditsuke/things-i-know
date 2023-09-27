Vim has 2 wrapping primitives:
- **Hard-wrap:** Vim inserts newline. Width is controlled with `:help textwidth`; set with `:set tw=<chars>`. To disable, set to 0.
- **Soft-wrap:** Vim virtually wraps text to the next "line" as it starts running beyond terminal width. Controlled with `:help wrap`


Reference: https://vim.works/2019/03/16/wrapping-text-in-vim/ (covers this and a lot more)