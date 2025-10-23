-   💥 Breaking changes
    -   The file `/Library/Application Support/org.pqrs/tmp/karabiner_grabber_manipulator_environment.json` is no longer updated.
        You can still use EventViewer to check current variable values.
-   🐛 Bug Fixes
    -   Fixed an issue in EventViewer where new events were not added while the "Unknown Events" tab was open.
-   ✨ New Features
    -   Added a feature that lets you set environment variables via [`/Library/Application Support/org.pqrs/config/karabiner_environment`](https://karabiner-elements.pqrs.org/docs/help/advanced-topics/set-environment-variables/).
    -   Added support for devices that expose the Programmable Buttons usage on the Consumer Usage Page. (e.g., VEC USB Footpedal)
    -   Added [`set_variable.expression` and `set_variable.key_up_expression`](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/to/set-variable/#expression-specification).
    -   Added [`expression_if` and `expression_unless`](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/conditions/expression/).
    -   Added `system.now.milliseconds` to variables.
    -   Added [`integer_value`](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/from/integer-value/) to the from event definition.
-   ⚡️ Improvements
    -   Updated the app icon for macOS 26.
    -   Added support for Liquid Glass.
    -   Reduced the load on karabiner_grabber.
        In particular, CPU usage is lower when handling high-frequency events (e.g., mouse input).
    -   Improved handling of the `ignore_vendor_events` setting.
        The UI already prevented enabling this for Apple devices, and now, even if you manually set `ignore_vendor_events` in karabiner.json, vendor events for Apple devices will always be processed regardless of the setting.
    -   Adjusted the layouts in Settings and EventViewer to show more information.
    -   Supported the following keys:
        -   generic_desktop::system_app_menu
        -   consumer_key_code::microphone
        -   consumer_key_code::selection
        -   pointing_button::button33 ... pointing_button::button255
    -   Sparkle Framework has been updated.
