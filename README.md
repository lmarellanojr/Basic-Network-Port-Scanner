# PortScannerPortable

PortScannerPortable is a lightweight, portable TCP port scanning tool packaged for easy distribution and quick start on Linux, macOS, and Windows. It bundles the core PortScanner application with convenience launch scripts so you can run the scanner without a lengthy setup.

**Key features**
- Scan a range of TCP ports on any host (IP address or domain name) and display results in real-time.
- Portable packaging: run using the provided shell, batch, or desktop launcher.
- No external dependencies required at runtime — uses only the Python standard library.
- Config-driven: settings files are provided for persistent configuration.

Repository layout
- App/: Packaged portable application (runnable bundle).
  - PortScanner/: packaged app and launcher scripts
  - DefaultData/: default logs and settings shipped with the bundle
- Other/: help documentation and canonical source mirror
- Data/: user data directory (logs and settings, created at first run)

Requirements
- No installation needed. Copy the PortScannerPortable/ folder to any USB drive, external disk, or local directory and run.
- No administrator privileges required (uses standard TCP sockets).
- Python 3.8+ is only needed if no compiled binary is present.

How to run

**Linux:**

Option A — Double-click (recommended):
1. Open the PortScannerPortable/ folder in your file manager.
2. Double-click "Port Scanner" (the PortScannerPortable.desktop file).
3. The app launches directly — no password needed.

> Note: If your file manager asks what to do with the .desktop file, choose "Trust and Launch" or "Mark as Executable", then double-click again.

Option B — Terminal:

```bash
chmod +x PortScannerPortable.sh
./PortScannerPortable.sh
```

CLI mode (no GUI):

```bash
./PortScannerPortable.sh --cli
```

**Windows:**
1. Navigate to the PortScannerPortable\ folder.
2. Double-click `PortScannerPortable.bat`.

CLI mode (no GUI): open Command Prompt, then run:

```
PortScannerPortable.bat --cli
```

**macOS:**

Option A — Double-click (recommended):
1. Open the PortScannerPortable/ folder in Finder.
2. Double-click `PortScannerPortable.command`. Terminal will open and launch the app automatically.

> Note: On first run, macOS may block it. Right-click the file → Open → Open, or go to System Settings → Privacy & Security and click "Open Anyway".

Option B — Terminal:

```bash
./PortScannerPortable.sh
```

CLI mode (no GUI):

```bash
./PortScannerPortable.sh --cli
```

**Run from source (any platform):**

```bash
cd App/PortScanner
python3 main.py           # GUI mode
python3 main.py --cli     # CLI mode
```

How to build the binary

1. Install the build dependency:

```bash
pip install pyinstaller
```

2. Build the executable:

```bash
cd App/PortScanner/
python3 build.py
```

3. The binary is placed in App/PortScanner/ automatically. Build artifacts are cleaned up after a successful build.

> Note: The build produces a native binary for the current OS — ELF on Linux, .exe on Windows, Mach-O on macOS.

Configuration
- Default configuration files can be found in `App/DefaultData/settings/settings.ini` and `Data/settings/`.
- To persist settings across runs, edit the settings under `Data/settings/settings.ini`.

Logs and data
- Exported scan logs are saved to the `Data/logs/` directory.
- To reset to defaults, delete the `Data/` folder. It will be recreated from `App/DefaultData/` on next launch.

Portability
- Copy the entire PortScannerPortable/ folder to any USB drive or external disk. No installation needed. No system files or registry entries are modified. Works fully offline.

Troubleshooting
- Missing Python: the launcher will fall back from the compiled binary to Python source automatically. Ensure Python 3.8+ is installed if no compiled binary is present.
- If the GUI fails to start, check that `tkinter` is installed (it is included with most Python distributions).
- On macOS, you may need to allow Terminal in System Settings → Privacy & Security → App Management.

Contributing
- Contributions are welcome. Please open issues for bugs or feature requests. For code contributions, fork the repository, create a branch, and submit a pull request with a clear description of the change.

License
- Include your project license here (e.g., MIT, Apache-2.0). If you want me to add a specific license file, tell me which license to use.

Contact
- For questions or help, open an issue in this repository or contact the maintainer listed in the project metadata.

Files to inspect
- See [App/PortScanner/main.py](App/PortScanner/main.py) for the packaged launcher and [Other/Source/main.py](Other/Source/main.py) for the source mirror.
