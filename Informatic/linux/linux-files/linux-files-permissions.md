---
tags:

- ready
- online
- reviewed
- linux
- operative-system

---

# permissions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/linux/working-with-files/permissions)__

## Linux File Permissions

In Linux systems, rights and privileges are assigned to files and directories in the form of permissions. These permissions indicate who can read, write, or execute (run) them. In Linux, there are three types of users: owners, groups, and others who can have a different set of permissions.

In fact, permissions on the system are there for a reason: to prevent unprivileged users from making changes on the system that would ultimately affect other users. With inadequate permissions, unprivileged users are able to make changes that would be beneficial or harmless to the Linux system.

Let's have a look at an example:

```bash
-rwxr--r-- 1 root root 4096 Jan 1 12:00 filename
```

From the above example, the first character `-` indicates if it is a regular file(`-`) or directory(`d`). The following group of three characters(`rwx`) represents the permissions for the file owner. The next three characters(`r--`) represent permissions for the group and the last set of three characters(`r--`) represents permissions for others.

The `r` indicates that the file can be read, `w` indicates that the file can be written to, and `x` indicates that the file can be executed.

The permissions can be changed using the `chmod`, `chown`, and `chgrp` commands.

Learn more from the following resources:

* [@article@Linux File Permissions](https://linuxhandbook.com/linux-file-permissions/)
* [@video@Linux File Permissions in 5 Minutes](https://www.youtube.com/watch?v=LnKoncbQBsM)

```bash
$ ls -l
drwxr-xr-x. 2 myuser myuser 40 May 19 10:52 existing-dir
```


| **What is**       | **Explanation**                                                                                                                                                                               |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Permissions**   | `drwxr-xr-x`<br>**d**: Directory indicator<br>**rwx**: Owner permissions (read, write, execute)<br>**r-x**: Group permissions (read, execute)<br>**r-x**: Others' permissions (read, execute) |
| **Links**         | `2`<br>Number of links to this directory, including `.` and entries for subdirectories.                                                                                                       |
| **Owner**         | `myuser`<br>User who owns this directory.                                                                                                                                                     |
| **Group**         | `myuser`<br>Group associated with this directory.                                                                                                                                             |
| **Size**          | `40`<br>Directory size in bytes (40 bytes for small directories due to metadata).                                                                                                             |
| **Date Modified** | `May 19 10:52`<br>Date and time when the directory was last modified.                                                                                                                         |
| **Name**          | `existing-dir`<br>Name of the directory.                                                                                                                                                      |
