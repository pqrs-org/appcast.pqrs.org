-   📅 Release date
    -   Oct 7, 2024
-   🐛 Bug Fixes
    -   The method for setting "Use all F1, F2, etc. keys as standard function keys" has been changed.
        Due to internal processing in macOS, with the new virtual keyboard introduced in version 15.0.0, this setting must be changed through System Settings.

## v15.1.0

-   📅 Release date
    -   Oct 6, 2024
-   🔔 Important Notes
    -   After the upgrade, you have to set keyboard type and restart macOS.
        <table><tbody><tr><td><!-- border hack -->
        <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.1.0/keyboard-type-selector@2x.png?v=2" alt="keyboard type selector" />
        </td></tr></tbody></table>
        <br/><br/>
        <table><tbody><tr><td><!-- border hack -->
        <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.1.0/macos-restart-required@2x.png" alt="macOS restart required" />
        </td></tr></tbody></table>
-   💥 Breaking changes
    -   The implicit conversion feature for fn+arrow keys, fn+return, and fn+delete has been removed.
        For example, fn+up arrow used to be automatically changed to page up, but it will now be treated as fn+up arrow without modification.
    -   To improve the behavior around the fn key, the Vendor ID and Product ID of the virtual keyboard used by Karabiner-Elements have been changed to the same values as those of a real Apple external keyboard.
    -   There were two JSON files that output information about connected devices, but this information has now been consolidated into `karabiner_grabber_devices.json`.
        `karabiner_grabber_device_details.json` is no longer used. Please use `karabiner_grabber_devices.json` from now on.
        -   `karabiner_grabber_devices.json`
        -   `karabiner_grabber_device_details.json` (obsoleted)
-   ✨ New Features
    -   Added [open_application](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/to/software_function/open_application/) to complex modifications.
    -   A setting has been added to disable mouse cursor movement and scrolling for both the mouse and gamepad.
    -   Settings of the gamepad stick have been added; deadzone and delta magnitude detection threshold.
    -   Added an option to allow quitting EventViewer with Command+Q and Command+W.
-   ⚡️ Improvements
    -   Fixed an issue where disconnected devices would occasionally remain in the device list.
    -   Updated the embedded screenshots and help messages for macOS 15 Sequoia.
    -   Adjusted the gamepad deadzone default value.
