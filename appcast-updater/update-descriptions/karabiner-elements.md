## About Legacy System Extension alert

This release still uses the kernel extension (aka legacy system extension), so the following alert will be shown.
<img src="https://karabiner-elements.pqrs.org/docs/manual/misc/legacy-system-extension/images/legacy-system-extension@2x.png" style="max-width: 420px; margin: 10px 0;">

We are working to migrate to a newer mechanism, DriverKit, from kernel extension and we plan to support it at Karabiner-Elements 13.0.0.
It will take a little more time. Please wait.

## Changes

-   ✨ New Features
    -   `event_changed_if` and `event_changed_unless` has been added to `conditions`.
-   ⚡️ Improvements
    -   Improved sending f1-f12 keys in complex modification (e.g., "change command+e to f2") by ignoring media key mappings for these keys.
    -   Improved caps lock LED handling.
    -   Improved uninstaller adding the kernel extension staging area clean up.
    -   Improved complex modifications json checker.
    -   "Check for updates" has been improved.
        -   Updated Sparkle signing to EdDSA (ed25519) from DSA.
        -   URL of appcast.xml has been updated.
