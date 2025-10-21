#!/bin/bash
#
# deps-ubuntu.sh - Install build dependencies for procps-ng on Ubuntu/Debian
#
# This script installs all the required packages to build procps-ng from source.
# Run this script with sudo privileges before building procps-ng.
#
# Usage: sudo ./deps-ubuntu.sh

set -e

echo "Installing build dependencies for procps-ng..."

# Update package lists
echo "Updating package lists..."
apt update

# Core build tools
echo "Installing core build tools..."
apt install -y \
    gcc \
    make \
    autoconf \
    automake \
    pkg-config \
    libtool

# Internationalization tools
echo "Installing internationalization tools..."
apt install -y \
    gettext \
    autopoint

# Development libraries
echo "Installing development libraries..."
apt install -y \
    libncurses-dev \
    libncursesw5-dev

# Standard C library development
echo "Installing C library development files..."
apt install -y \
    libc6-dev \
    linux-libc-dev

# Additional build dependencies
echo "Installing additional build tools..."
apt install -y \
    binutils \
    cpp \
    perl \
    m4

# Optional dependencies (commented out - uncomment if needed)
# echo "Installing optional dependencies..."
# apt install -y po4a  # For documentation translation
# apt install -y dejagnu  # For running full test suite

echo ""
echo "All build dependencies have been installed successfully!"
echo ""
echo "You can now build procps-ng by running:"
echo "  ./autogen.sh"
echo "  ./configure"
echo "  make"
echo "  make check"
echo ""
echo "Optional: Install po4a and dejagnu for enhanced functionality:"
echo "  sudo apt install po4a dejagnu"