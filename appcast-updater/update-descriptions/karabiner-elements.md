- 🔔 Important Notes
    - Karabiner-Core-Service now requires Accessibility permission. Please enable it in System Settings.
- ✨ New Features
    - `frontmost_application_if` can now detect overlay windows, such as Spotlight, using the Accessibility API.
    - `variable_if` now supports the following variables, making it possible to change behavior depending on whether the focused element is a text area.
        - accessibility.focused_ui_element.role_string
        - accessibility.focused_ui_element.subrole_string
        - accessibility.focused_ui_element.title_string
        - accessibility.focused_ui_element.window_position_x
        - accessibility.focused_ui_element.window_position_y
        - accessibility.focused_ui_element.window_size_height
        - accessibility.focused_ui_element.window_size_width
    - You can now generate JSON for Complex Modifications rules by writing JavaScript.
    - Added an "Add your own rule using JavaScript" button to the complex modifications viewer.
    - Added an "Open in external editor" button to the complex modifications editor.
    - Added a "Clear user variables" button to EventViewer. (Thanks to @BarakXYZ)
    - Added [`to.to_if_other_key_pressed`](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/to-if-other-key-pressed/).
      It's now possible to implement "Change option+tab to command+tab" in a more natural way and reliable way.
    - Added [`to.send_user_command`](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/to/send-user-command/).
      By using it together with an external server built with Karabiner-Elements-user-command-receiver,
      you can execute any action from Karabiner-Elements with low latency. (Thanks to @nikivdev)
    - Added [`to.from_event`](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/to/from-event/),
      allowing pressed events to be passed through as-is.
    - Added `relative_to` and `fallback_to` to `software_function.set_mouse_cursor_position`.
    - Added `Enable CGEventTap fallback` setting to Expert tab.
      Enable receiving events via CGEventTap for keyboards where IOHIDDeviceOpen fails for some reason.
    - Added Setup tab to Settings.
- 🐛 Bug Fixes
    - Fixed an issue where modifier keys could remain stuck when physical keyboard events were missed during capture.
    - Fixed an issue where reordering in Complex Modifications and Profiles didn't work properly when dragging while scrolling.
    - Fixed an issue where variables in expressions were not properly initialized when unset.
- ⚡️ Improvements
    - Changed to call `exit` instead of `abort` to suppress crash reports when a fatal error prevents CFRunLoop from running in background processes.
    - If Accessibility permission makes Input Monitoring permission unnecessary, only Accessibility permission will be requested.
