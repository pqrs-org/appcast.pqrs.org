-   💥 Breaking changes
    -   In previous versions, when fn+arrows were implicitly changed to home, end, page up, and page down, this would occur even if other modifiers were pressed.
        For example, fn+shift+up_arrow would become shift+page_up.
        This has now been changed so that home, end, page up, and page down are only triggered when only fn is pressed.
        If you prefer the old behavior, you can revert to it by disabling the "Change fn+arrows..." setting in the Virtual Keyboard tab.
        <br/><br/>
        <table><tbody><tr><td><!-- border hack -->
        <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.1.0/strict-fn-arrows@2x.png" alt="Karabiner-Elements Setttings" />
        </td></tr></tbody></table>
-   ✨ New Features
    -   A setting has been added to disable mouse cursor movement and scrolling for both the mouse and gamepad.
    -   Settings of the gamepad stick have been added; deadzone and delta magnitude detection threshold.
    -   Added an option to allow quitting EventViewer with Command+Q and Command+W.
-   ⚡️ Improvements
    -   Adjusted the gamepad deadzone default value
