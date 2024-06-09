-   💥 Breaking changes
    -   macOS 11 and macOS 12 are no longer supported.
    -   The background service management method has been changed to a new method compatible with macOS 13 and later.
        Therefore, permission needs to be granted for the background service to run. Please follow the steps below.
        -   Open Karabiner-Elements Settings.
        -   Follow the instructions to allow Karabiner-Elements Privileged Daemons to run in the System Settings.
            <br/><br/>
            <table><tbody><tr><td><!-- border hack -->
                <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.0.0/settings@2x.png" alt="Karabiner-Elements Setttings" />
            </td></tr></tbody></table>
    -   The method to enable the Multitouch Extension has changed.
        To enable the Multitouch Extension, go to the Misc tab in the settings and turn on `Enable Multitouch Extension`.
        <br/><br/>
        <table><tbody><tr><td><!-- border hack -->
        <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.0.0/multitouch-extension@2x.png" alt="Karabiner-Elements Setttings" />
        </td></tr></tbody></table>
-   🔔 Important Notes
    -   A unique random ID called `karabiner_machine_identifier` is now generated during installation.
        This ID is used for machine-specific settings and may be included in the karabiner.json file.
        If you are sharing karabiner.json with others, you might be interested in how this ID is generated and whether it is safe to share.
        Since it is a safe ID to share with others, and there is no need to mask it when you share karabiner.json with others.
        For more details, please refer to the [Privacy](https://karabiner-elements.pqrs.org/docs/privacy/) page.
        <br/><br/>
        <table><tbody><tr><td><!-- border hack -->
        <img src="https://karabiner-elements.pqrs.org/docs/releasenotes/images/v15.0.0/karabiner-machine-identifier@2x.png" alt="karabiner_machine_identifier" />
        </td></tr></tbody></table>
-   ✨ New Features
    -   Added the ability to duplicate and reorder profiles.
    -   Added the ability to restart Karabiner-Elements from the menu.
-   ⚡️ Improvements
    -   Improved "{device} is ignored temporarily until {key_code} is pressed again" message for to make it more understandable. (Thanks to @adamnovak)
    -   Added "Enable Karabiner Notification Window" configuration, which allows you to hide the notification window by turning off this setting. (Thanks to @jwodnicki)
    -   Support `al_consumer_control_configuration` key, used as the Music key. (Thanks to @kambala-decapitator)
    -   Improved behaviour when using the gamepad stick as a pointing device.
    -   Improved `to_if_alone` behavior to use the modifier flags of the time the key is pressed, when sending events.
    -   Added `{"type": "unset"}` option to `set_variable`.
    -   Integrated `karabiner_observer` functions into `karabiner_grabber`, and then `karabiner_observer` has been removed.
        The number of background processes has been reduced, resolving performance issues caused by inter-process communication that were occurring in some environments.
    -   Internal changes:
        -   Improved the interface of libkrbn to minimize the use of unsafe pointers in Swift.
