# Minimal installation of GNOME on Arch Linux

You can read the packages to be installed in the ``packages.txt`` file of this same repository

## Instructions

**WARNING:** This script requires that you first install Arch Linux via archinstall with the xorg profile or perform a minimal installation manually.

1. Clone this repository:

    ```sh
    git clone https://github.com/Warbacon/arch-gnome-install.git
    ```

2. Run the script as root:

    ```sh
    sudo ./install.sh
    ```

## Notice

Currently the wallpapers provided by gnome are not installed because a small bug occurs when restarting the computer. Installing the ``gnome`` package fixes it, but since that takes the fun out of this project, I'm investigating what specific package is needed to stop this bug from occurring.

You can install ``gnome-backgrounds`` manually and see what I mean, and if you manage to fix it, please let me know!
