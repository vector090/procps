# Build Dependencies for procps-ng

This document lists all the dependencies that were installed to build the procps-ng project.

## Core Build Tools
- **gcc** (4:13.2.0-7ubuntu1) - GNU C Compiler
- **make** (4.3-4.1build2) - GNU Make build tool
- **autoconf** (2.71-3) - GNU Autoconf configuration script generator
- **automake** (1:1.16.5-1.3ubuntu1) - GNU Automake Makefile generator
- **pkg-config** (1.8.1-2build1) - Package configuration tool
- **libtool** (2.4.7-7build1) - GNU Libtool library building tool

## Internationalization/Localization
- **gettext** (0.21-14ubuntu2) - GNU gettext internationalization framework
- **autopoint** (0.21-14ubuntu2) - Part of gettext, required for autogen.sh

## Development Libraries
- **libncurses-dev** (6.4+20240113-1ubuntu2) - Development files for ncurses library
- **libncursesw5-dev** (6.4+20240113-1ubuntu2) - Development files for wide-character ncurses library

## Standard C Library Development
- **libc6-dev** (2.39-0ubuntu8.6) - GNU C Library development files
- **linux-libc-dev** (6.8.0-86.87) - Linux kernel headers for development

## Additional Build Dependencies
- **binutils** (2.42-4ubuntu2.5) - GNU assembler, linker and binary utilities
- **cpp** (4:13.2.0-7ubuntu1) - GNU C Preprocessor
- **perl** (5.38.2-3.2ubuntu0.2) - Practical Extraction and Report Language
- **m4** (1.4.19-4build1) - GNU macro processor

## Libraries (Runtime)
- **libncurses6** (6.4+20240113-1ubuntu2) - Shared libraries for terminal handling
- **libncursesw6** (6.4+20240113-1ubuntu2) - Wide-character ncurses libraries
- **libtinfo6** (6.4+20240113-1ubuntu2) - Low-level terminfo library

## Optional Dependencies (Not Installed)
The following optional dependencies were not installed but could enhance functionality:
- **po4a** - For documentation translation (configure showed "checking for po4a... no")
- **DejaGNU** - For running the full test suite (make check showed "WARNING: could not find 'runtest'")

## Build Process Summary
1. **autogen.sh** - Successfully generated configure script using autotools
2. **configure** - Successfully configured the build with all required dependencies
3. **make** - Successfully built all binaries and libraries
4. **make check** - All 8 unit tests passed

## Generated Binaries
The build process created the following command-line tools:
- free, pgrep, pkill, pmap, ps, pwdx, tload, uptime, vmstat, pidwait, pidof, kill, w, watch, top, slabtop, hugetop, sysctl

## Notes
- The build completed successfully on Ubuntu 24.04 (Noble)
- Locale warnings are present but do not affect the build process
- All core functionality is available without the optional dependencies