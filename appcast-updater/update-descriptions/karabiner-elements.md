-   🐛 Bug Fixes
    -   Fixed an issue in EventViewer where new events were not added while the "Unknown Events" tab was open.
-   ✨ New Features
    -   Reduced the load on karabiner_grabber.
        In particular, CPU usage is lower when handling high-frequency events (e.g., mouse input).
    -   Added a feature that lets you set environment variables via `/Library/Application Support/org.pqrs/config/karabiner_environment`.
    -   Added support for devices that expose the Programmable Buttons usage on the Consumer Usage Page. (e.g., VEC USB Footpedal)
-   ⚡️ Improvements
    -   Improved handling of the `ignore_vendor_events` setting.
        The UI already prevented enabling this for Apple devices, and now, even if you manually set `ignore_vendor_events` in karabiner.json, vendor events for Apple devices will always be processed regardless of the setting.
    -   Adjusted the layouts in Settings and EventViewer to show more information.
    -   Supported the following keys:
        -   generic_desktop::system_app_menu
        -   consumer_key_code::microphone
        -   consumer_key_code::selection
        -   pointing_button::button33 ... pointing_button::button255
