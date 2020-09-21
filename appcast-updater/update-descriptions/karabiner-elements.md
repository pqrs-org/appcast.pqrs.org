## Note

This release supports macOS Catalina (10.14) and macOS Big Sur (11.0).

🍎🍎🍎 If you are using macOS Big Sur Beta, use the latest Big Sur Beta (Beta 7 or later). 🍎🍎🍎

Old macOS Big Sur Beta (Beta 6) has an issue around DriverKit.<br/>
Karabiner-Elements will stop working after restarting your Mac on macOS Big Sur Beta 6 due to the issue.

## Release notes

-   💥 Breaking changes
    -   macOS 10.12 - 10.14 support has been dropped.
-   ✨ New Features
    -   Supported macOS Big Sur (11.0)
    -   Supported both Intel-based Macs and Apple Silicon Macs.
    -   Changed the virtual keyboard and mouse implementation to DriverKit from deprecated kernel extension.
-   ⚡️ Improvements
    -   Improved preferences window messages.
    -   Partial support for comments in karabiner.json configuration file.
        -   Supported reading json file with comments.
        -   Limitation: The json comments will be removed if you change the json from Preferences GUI or command line interface.
