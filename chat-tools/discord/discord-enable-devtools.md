#discord

As of September 2022, [[discord]] desktop no longer allows access to the Chromium Devtools by default. To enable we add a config key to the Discord `settings.json` (located in `$AppData/discord` on Windows):
```powershell
$file = "${Env:AppData}/discord/settings.json"
# Paranthesis around the Get-Content call to make powershell wait for Get-Content to complete before piping the output. This avoids overwriting the file while it's still being read, like sponge from moreutils.
(Get-Content $file) | jq '. + { "DANGEROUS_ENABLE_DEVTOOLS_ONLY_ENABLE_IF_YOU_KNOW_WHAT_YOURE_DOING": true }' > $file
# The file is UTF-16LE encoded, convert to UTF-8. Or use Set-Content with -Encoding UTF8, _maybe_
dos2unix $file
```
