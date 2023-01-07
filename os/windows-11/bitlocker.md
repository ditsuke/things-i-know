# Bitlocker: [[windows|Windows]]-native Drive Encryption
## GUI
As of Windows 11 22000, the Bitlocker GUI resides in the control panel. The _Suspend Protection_ option is handy to temporarily disable encryption until the next time the device boots up.
![[bitlocker-gui.png]]

## Protectors
A bitlocker _protector_ is a way to decrypt protected volumes. On WIndows 11 machines with a TPM, only the `TPM` and `Numerical Password` (backup key) are enabled by default. See protectors with [[manage-bde]]: `manage-bde -protectors -get C:
![[manage-bde-protectors-list.png|400]]

### Startup PIN/Passkey (pre-boot)
On systems with a TPM, by default the bitlocker encryption keys are loaded from the TPM on startup. This is not always desirable behavior, for example this leaves physically compromised systems vulnurable since Windows itself is not a secure OS. Bypassing Windows passwords is trivial at best.
This step is where the Bitlocker GUI is no longer helpful to use. Back to [[manage-bde]]:
![[manage-bde-protectors-add-failure.png]]

Uh, oh. Straight to [[group-policy-editor]]:
`Computer Configuration > Administrative Templates > Windows Components > BitLocker Drive Encryption > Operating System Drives`:
- "Require additional authentication at startup":
![[gpedit-bitlocker-startup-key.png]]

- "Allow enhanced PINs for startup" to allow alphanumeric keys (bitlocker only does numeric 0-9 char keys by default):
	![[gpedit-bitlocker-enhanced-pins.png]]

Back to the terminal and success:
![[manage-bde-protector-add-yay.png]]
