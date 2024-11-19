---
tags:

- ready
- online
- reviewed
- linux
- operative-system

---
# files

## Contents

- [[linux-files-vim]]
- [[linux-files-nano]]
- [[linux-files-permissions]]
- [[linux-files-archiving]]
- [[linux-files-copying-renaming]]
- [[linux-files-soft-hard-links]]

__Roadmap info from [roadmap website](https://roadmap.sh/linux/files)__

## Editing Files

Linux, like other operating systems, allows file editing for numerous purposes, whether you need to configure some system functionality or writing scripts. There's a variety of text editors available in Linux by default, these include: `nano`, `vi/vim`, `emacs`, and `gedit`. Each of these has its own learning curve and set of commands.

For instance, `nano` is a basic text editor, which is easy to use and perfect for simple text file editing. `Vi/vim`, on the other hand, is more advanced and offers a wide range of features and commands.

To edit a file you first need to open it using a command like:

```bash
nano filename
```

This command will open the file `filename` in the `nano` editor. Once open, you can make changes to the file, save, and exit it. Other editors like `vi/vim` and `emacs` have their own specific commands for editing, saving and exiting files. It's essential to learn the basic commands of your chosen editor to efficiently work with files in Linux.


## Ref

- https://kubebyexample.com/learning-paths/linux-essentials/file-management-linux

| **File Type**         | **Description**                                                                 | **Example**                     |
| --------------------- | ------------------------------------------------------------------------------- | ------------------------------- |
| **Regular File (-)**  | Stores data, text, or program information. May contain readable or binary data. | `file1`, `file2`                |
| **Directory (d)**     | A special file that contains a list of files and subdirectories.                | `dirA`, `dirB`                  |
| **Symbolic Link (l)** | A pointer to another file or directory.                                         | `myprogram.2` (→ `myprogram.1`) |
| **Executable File**   | A regular file that can be executed as a program.                               | `myprogram.1`                   |
| **Special Files**     | Devices or processes like block, character devices, or pipes. Not shown here.   | `/dev/sda` (block device)       |
| **Socket (s)**        | A file for inter-process communication.                                         | Typically in `/var/run/`        |
| **Named Pipe (p)**    | A file for communication between processes.                                     | `mkfifo` created files          |
- https://kubebyexample.com/learning-paths/linux-essentials/file-management-linux

| **Directory** | **Purpose**                                                                                   | **Examples of Contents**                                                                 |
|---------------|-----------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `/`           | The root directory. The starting point of the file system hierarchy.                         | Subdirectories like `/bin`, `/etc`, `/home`, etc.                                       |
| `/bin`        | Essential user command binaries needed for system operation, available to all users.          | Commands like `ls`, `cp`, `mv`, `cat`, `bash`.                                          |
| `/sbin`       | Essential system binaries used by the root user for system maintenance and repair.            | Commands like `fsck`, `reboot`, `ifconfig`.                                             |
| `/etc`        | Configuration files for system and applications.                                              | `hosts`, `passwd`, `ssh/`.                                                             |
| `/home`       | User home directories, where personal files and settings are stored.                          | `/home/username` directories.                                                          |
| `/root`       | The home directory for the root user.                                                         | Files related to the root user.                                                        |
| `/var`        | Variable files that change frequently, such as logs, caches, and spools.                      | `/var/log/`, `/var/cache/`, `/var/spool/`.                                             |
| `/tmp`        | Temporary files created by applications and the system. Cleared on reboot.                    | Application-specific temporary data.                                                   |
| `/usr`        | User-installed software and libraries, often containing subdirectories like `bin`, `lib`, etc.| `/usr/bin/`, `/usr/lib/`, `/usr/share/`.                                               |
| `/lib`        | Shared system libraries needed for system programs and kernel modules.                        | Libraries like `libc.so`, kernel modules in `/lib/modules/`.                            |
| `/boot`       | Files needed to boot the system, including the kernel and bootloader configurations.          | `vmlinuz`, `grub/`.                                                                    |
| `/dev`        | Device files representing hardware devices and virtual devices.                               | `/dev/sda`, `/dev/null`, `/dev/tty`.                                                   |
| `/proc`       | Virtual filesystem providing process and system information in real-time.                     | `/proc/cpuinfo`, `/proc/meminfo`, `/proc/<PID>`.                                        |
| `/sys`        | Virtual filesystem providing information about hardware devices and drivers.                  | Files for kernel and device configuration.                                             |
| `/opt`        | Optional software packages and add-on applications.                                           | Third-party software installed manually.                                               |
| `/media`      | Mount points for removable media like USB drives and CDs.                                     | Directories created for each mounted device (e.g., `/media/usb`).                       |
| `/mnt`        | Temporary mount points for manually mounted filesystems.                                      | Used by administrators for mounting disks.                                             |
| `/srv`        | Data served by the system, such as websites or FTP files.                                     | Files for web servers (`/srv/http/`) or FTP services.                                   |
| `/run`        | Runtime data for processes since the last boot, such as PID files or sockets.                 | `/run/lock/`, `/run/user/`.                                                            |

