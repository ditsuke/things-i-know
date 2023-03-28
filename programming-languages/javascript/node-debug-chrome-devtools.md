#nodejs #debugging

# Debugging a [[nodejs]] process with the Chrome Devtools Debugger

Add the `--inspect` flag to the node process, either directly or with the `NODE_OPTIONS` environment variable like:
`NODE_OPTIONS="--inspect" yarn start`

> But what about firefox?

No can't do. Since Firefox uses the [[gecko-js-engine|Gecko]] JavaScript engine, different from the [[v8-js-engine]] used by Chrome and Node, it cannot debug Node processes. Reference: [How to Debug Node with FIrefox? [StackOverflow]](https://stackoverflow.com/a/56759070).
