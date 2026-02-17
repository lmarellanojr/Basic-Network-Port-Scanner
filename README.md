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
- Python 3.8+ (recommended)
- No administrator privileges required (uses standard TCP sockets)

Installation

Option A — Run the portable bundle (recommended)
On Linux/macOS (from repository root):

```bash
chmod +x PortScannerPortable.sh
./PortScannerPortable.sh
```

On Windows: double-click PortScannerPortable.bat or run it from a Command Prompt.

On macOS: double-click PortScannerPortable.command, or run the .sh from Terminal.

Option B — Run from source
1. Navigate to the app directory:

```bash
cd App/PortScanner
```
2. Run the scanner:

```bash
python3 main.py
```

Usage
- The portable launchers start the GUI and load configuration from the default settings.
- CLI mode (no GUI): pass the `--cli` flag to any launcher.

```bash
./PortScannerPortable.sh --cli
```

- If running from source, the main entrypoints are:

- GUI (source): `App/PortScanner/main.py`
- CLI (source): `App/PortScanner/main.py --cli`

Configuration
- Default configuration files can be found in `App/DefaultData/settings/settings.ini` and `Data/settings/`.
- To persist settings across runs, edit the settings under `Data/settings/settings.ini` (or the corresponding path in the portable bundle).

Logs and data
- Exported scan logs are saved to the `Data/logs/` directory.
- To reset to defaults, delete the `Data/` folder. It will be recreated from `App/DefaultData/` on next launch.

Troubleshooting
- Missing Python:
  - The launcher will fall back from the compiled binary to Python source automatically. Ensure Python 3.8+ is installed if no compiled binary is present.
- If the GUI fails to start, check that `tkinter` is installed (it is included with most Python distributions).
- On macOS, you may need to allow Terminal in System Settings -> Privacy & Security -> App Management.

Contributing
- Contributions are welcome. Please open issues for bugs or feature requests. For code contributions, fork the repository, create a branch, and submit a pull request with a clear description of the change.

License
- Include your project license here (e.g., MIT, Apache-2.0). If you want me to add a specific license file, tell me which license to use.

Contact
- For questions or help, open an issue in this repository or contact the maintainer listed in the project metadata.

Files to inspect
- See [App/PortScanner/main.py](App/PortScanner/main.py) for the packaged launcher and [Other/Source/main.py](Other/Source/main.py) for the source mirror.
