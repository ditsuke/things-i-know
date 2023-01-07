# `jq`: [[sed]] for JSON

[Website](https://stedolan.github.io/jq/) | [GitHub](https://github.com/stedolan/jq) | [Playground (jqplay.org)](https://jqplay.org/)

#cli #json

jq is a command-line JSON processor written in [[C]]. It is always a DSL to manipulate JSON onto itself.

## Add key-value pair to JSON from a file
`file=/path/to/file; cat "$file" | jq --arg v 'value' '. + {"key": $v}'`

To write the output back to the original file in one go, use something like [[sponge]] from [[moreutils]], or in powershell wrap the read part of the pipeline with paranthesis like: `(Get-Content /path/to/file) | jq . > /path/to/file`.

On [[windows]], [[dos2unix]] might be needed to fix up the file from `UTF-16LE` to `UTF-8`, for reasons I'm unaware of.
