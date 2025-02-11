# GdExtensionTemplate 4.3

Template for GDExtension in Windows 10 with x86_64-w64-mingw32.
This repository provides a basic structure for creating GDExtensions using MinGW and Godot 4.3.

## Features
- Pre-configured directory structure.
- Example source files to get started quickly.
- Compatible with MinGW and Godot 4.x.

## Prerequisites
- [Godot 4.x](https://godotengine.org/download)
- [MinGW-w64](https://www.mingw-w64.org/)
- [SCons](https://scons.org/) for building.
- Python 3.x

## Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/GdExtensionTemplate_4.3.git
cd GdExtensionTemplate_4.3
git submodule update --init --recursive
```

### 2. Install MinGW
Ensure that you have MinGW installed and configured with the correct POSIX and SEH options.

### 3. Build the extension
```bash
scons platform=windows
```
This will generate the build files for Godot.

### 4. Set up MinGW Environment
A batch file (`setup_mingw.bat`) is included to help configure the MinGW environment temporarily.

#### setup_mingw.bat Content
```bat
@echo off
REM Set the MinGW directory (your custom path)
set MINGW_DIR=..Dev\mingw64

REM Temporarily add MinGW to PATH
set PATH=%MINGW_DIR%\bin;%PATH%

REM Confirm that the environment is set up
echo MinGW setup complete. Active compiler:
g++ --version

REM Open a new CMD with the active configuration
cmd
```
Run this batch file before building to ensure the correct compiler is used.

### 5. Create Godot project and use the extension
- Open Godot.
- Create or open a project.
- Add the compiled GDExtension to the project settings.

### Contribution
If you find any issue or have suggestions for improvement, feel free to submit an issue or a pull request.

### License
This project is licensed under the MIT License.
