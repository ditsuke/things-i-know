Panel Self Refresh (PSR) is a power-saving feature used by [[intel]] iGPUs. This feature is known to cause flickering and other issues. Disabling it can possibly workaround other seemingly unrelated driver issues (see [[linux-freezes-intel-12-gen-alder-lake]]).

The `enable_psr` [[i915]] option can be used to enable/disable PSR.
