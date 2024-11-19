---
tags:

- ready
- online
- reviewed
- linux
- operative-system

---

# soft-hard-links

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/linux/working-with-files/soft-hard-links)__

## Soft and Hard Links

In Unix-like operating systems like Linux, soft (symbolic) and hard links are simply references to existing files that allow users to create shortcuts and duplication effects within their file system.

A hard link is a mirror reflection of the original file, sharing the same file data but displaying a different name and inode number. It's vital to note that if the original file is deleted, the hard link still retains the file data.

On the other hand, a soft link, also known as a symbolic link, is more like a shortcut to the original file. It has a different inode number and the file data resides only in the original file. If the original file is removed, the symbolic link breaks and will not work until the original file is restored.

Below is an example of how to create a soft link and a hard link in Linux:

```bash
# Create a hard link
ln source_file.txt hard_link.txt

# Create a soft link
ln -s source_file.txt soft_link.txt
```

Please, understand that `source_file.txt` is the original file and `hard_link.txt` & `soft_link.txt` are the hard and soft links respectively.


| **Aspect**             | **Soft Link (Symbolic Link)**                                                             | **Hard Link**                                                                                       |
| ---------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| **Definition**         | A shortcut or pointer to the original file.                                               | A direct reference to the file's inode (physical location on disk).                                 |
| **Characteristics**    | - Works across different filesystems. <br> - Breaks if the original file is deleted.      | - Works only within the same filesystem. <br> - Remains valid even if the original file is deleted. |
| **File Type**          | Symbolic (displayed as `l` in `ls -l`).                                                   | Regular file (displayed as `-` in `ls -l`).                                                         |
| **Storage**            | Stores the path to the original file.                                                     | Shares the same inode number as the original file.                                                  |
| **Use Cases**          | - Creating shortcuts. <br> - Linking files or directories across filesystems.             | - Backup or versioning where original data needs to persist after deletion.                         |
| **Behavior on Delete** | Becomes invalid if the original file is deleted.                                          | File remains accessible unless all hard links and the original file are deleted.                    |
| **Creation Command**   | `ln -s <target> <link_name>`                                                              | `ln <target> <link_name>`                                                                           |
| **Examples**           | - `ln -s myprogram.1 myprogram.2` (as in your screenshot, symbolic link to another file). | - `ln file1 file2` (creates another name for the same file).                                        |
| **Limitations**        | Cannot link to files that don't exist.                                                    | Cannot link directories or files across filesystems.                                                |
