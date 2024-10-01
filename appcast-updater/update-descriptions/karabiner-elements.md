-   🔔 Important Notes
    -   After the upgrade, macOS must be restarted to update the virtual keyboard driver.
        <br/><br/>
          <table><tbody><tr><td><!-- border hack -->
          <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.1.0/macos-restart-required@2x.png" alt="macOS restart required" />
          </td></tr></tbody></table>
    -   After restarting, please open the Karabiner-Elements settings and configure the keyboard type.
        <br/><br/>
        <table><tbody><tr><td><!-- border hack -->
        <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.1.0/keyboard-type-selector@2x.png?v=2" alt="keyboard type selector" />
        </td></tr></tbody></table>
-   💥 Breaking changes
    -   The implicit conversion feature for fn+arrow keys, fn+return, and fn+delete has been removed.
        For example, fn+up arrow used to be automatically changed to page up, but it will now be treated as fn+up arrow without modification.
    -   To improve the behavior around the fn key, the Vendor ID and Product ID of the virtual keyboard used by Karabiner-Elements have been changed to the same values as those of a real Apple external keyboard.
-   ✨ New Features
    -   A setting has been added to disable mouse cursor movement and scrolling for both the mouse and gamepad.
    -   Settings of the gamepad stick have been added; deadzone and delta magnitude detection threshold.
    -   Added an option to allow quitting EventViewer with Command+Q and Command+W.
-   ⚡️ Improvements
    -   Updated the embedded screenshots and help messages for macOS 15 Sequoia.
    -   Adjusted the gamepad deadzone default value.
