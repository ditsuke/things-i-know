For some reason, fedora "manages" [[chrome]]/[[chromium]] installations OOTB effectively disabling a bunch of useful settings (such as custom/secure DNS). Here's how to get around:
1. Remove any package matching `fedora-chromium-config.*`
2. Remove `/opt/chrome/policies/00_gssapi.json`
3. Remove `/opt/chromium/policies/00_gssapi.json`
