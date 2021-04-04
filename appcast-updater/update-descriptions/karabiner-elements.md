-   📅 Release date
    -   Apr 4, 2021
-   🐛 Bug Fixes
    -   Fixed an issue that Karabiner-Elements stops working with `virtual_hid_keyboard is not ready. Please wait for a while.` error message when you kill `karabiner_console_user_server` process manually.
-   ⚡️ Improvements
    -   Changed to terminate virtual HID devices immediately after quit Karabiner-Elements.

### 🔔 Notes for Mac computers with Apple Silicon (Apple M1) users

macOS Big Sur 11.2 or earlier have an issue within memory management and HID device handling that causes kernel panics on Mac computers with Apple Silicon.
The virtual device that is used internally by Karabiner-Elements triggers this issue, and a kernel panic might be caused at macOS shutdown.

We confirmed that this issue has been fixed in [macOS Big Sur 11.3 Beta](https://beta.apple.com/sp/betaprogram/).
Please use macOS Big Sur 11.3 Beta or later versions if you are facing the kernel panic issue.
