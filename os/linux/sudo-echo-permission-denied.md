Redirection is done by the shell before `sudo` is even invoked. For an equivalent, use [[tee]]:
`echo "something" | sudo tee /path/to/file`

Use the `-a` flag to append like `>>`
