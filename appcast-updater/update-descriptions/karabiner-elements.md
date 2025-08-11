-   🐛 Bug Fixes
    -   Fixed an issue in EventViewer where new events were not added while the "Unknown Events" tab was open.
-   ⚡️ Improvements
    -   Improved handling of the `ignore_vendor_events` setting.
        The UI already prevented enabling this for Apple devices, and now, even if you manually set `ignore_vendor_events` in karabiner.json, vendor events for Apple devices will always be processed regardless of the setting.
    -   Adjusted the layouts in Settings and EventViewer to show more information.
