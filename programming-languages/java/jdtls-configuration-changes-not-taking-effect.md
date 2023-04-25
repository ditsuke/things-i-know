---
Aliases: "My LSP doesn't recognise new Java features"
---

There are two steps necessary to make sure newer Java features can be used:
1. The project builds with the correct source JDK version, and for the correct target JRE version.
2. The LSP knows how to leverage the newer version.

For step 1., you likely need to update your [[maven]] or [[gradle]] configuration for your target JDK/Java runtime versions. For step 2, you need to update your LSP (likely [[jdtls]] configuration so it can find JDK(s) other than the one its being powered by).

> *My LSP doesn't make use of my configuration changes* 😭

Using [[jdtls]] and your configuration changes (to the language server or your project's `pom.xml` don't take hold in your editor? Fret not, cause here's what you need (assuming a [[maven]] project):
```shell
mvn clean eclipse:clean eclipse:eclipse compile package # The `clean`/`compile` steps _might_ be unnecessary, but oh well
```

> What does it do?

The Eclipse language server retains some setting caches in the project's `.settings` folder and so on, plus some assets might need recompiling for changes like changing the source JVM, etc. Note that for language servers in other editors like [[vscode]], there might be additional files in the workspace that need cleaning up ([ref](https://github.com/microsoft/vscode-maven/issues/132#issuecomment-922327606))
