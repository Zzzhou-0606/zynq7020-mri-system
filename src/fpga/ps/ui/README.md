# Board display

The 800×480 interface uses a shared Qt Designer layout, `board_dashboard.ui`. `main.cpp` retains the status polling, task-scoped previews, fractional progress, temperature, and network actions. `address_edit.hpp` provides the existing local touchscreen IPv4 keypad. Visible branding is **MRI STATION**; the internal executable name remains `demo2` for compatibility with the boot launcher.

The peripherals revision adds a fourth **Tools** page: local five-minute doctor pairing codes, USB device selection and current-case export, system time and RTC status. Pairing and export use asynchronous local helpers; the export request binds the task selected at button press. Production packaging installs `patient_portal.py`, `usb_export.py`, and `mri_board_peripherals.py` at their expected `/opt/mri` paths. Use the complete peripherals package, not just the Qt binary, for these actions.

The generated `ui_board_dashboard.h` is retained so the ARM build does not require a separate UI compiler. After editing the layout, regenerate it with a Qt 5 `uic`:

```sh
uic src/fpga/ps/ui/board_dashboard.ui -o src/fpga/ps/ui/ui_board_dashboard.h
```

Run this command from the delivery root after editing the layout. The complete ARM build and root filesystem packaging procedure is in [build instructions](../../../../build/README.md). Install the matching service helpers together with the Qt executable.
