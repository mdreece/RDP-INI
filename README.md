# RDP-INI
Storage of .ini files for updates

Original sources for RDP Wrapper are:
- [https://github.com/stascorp/rdpwrap](https://github.com/stascorp/rdpwrap)
- [https://github.com/asmtron/rdpwrap-old](https://github.com/asmtron/rdpwrap-old)

rdpwrap.ini is going to be updated in "RDPINI" for use of the 'AutoUpdater' now renamed 'RDPW - Update'.
This needs to be dropped into "C:\Program Files\RDP Wrapper" with the already existing group of RDP related files.
Ensure that a connection works with RDPCheck.exe before attempting with a tablet connection.

Core components are still from the above 2 locations. The base files for installation have been broken down to three .bats:
- RDPW - Install: Runs through installation/reinstallation when needed.
- RDPW - Uninstall: Runs through uninstalling RDPWrapper running instances (core files remain).
- RDPW - Update: If there is a new .ini for Winver, this is run to update RDPWrapper as needed.

Additional Files:
- RDPCheck.exe: Allows for local testing to ensure a remote connection to the other Win account is functional.
- RDPConf.exe: Allows for the user to check if RDPWrapper is supported in their given build of Windows.
- RDPWInsta.exe: Core component to the installation process.

 - 3/29/2024: UPDATED FOR V10.0.22621.3374
 - 3/28/2024: UPDATED FOR V10.0.19045.4239
