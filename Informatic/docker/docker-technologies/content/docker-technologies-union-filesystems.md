---
tags:
- roadmap
- docker
- docker-technologies
- ready
- filesystem
- online
- linux
---

# docker-technologies-union-filesystems

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/underlying-technologies/union-filesystems)__

## Union Filesystems

Union filesystems, also known as UnionFS, play a crucial role in the overall functioning of Docker. It’s a unique type of filesystem that creates a virtual, layered file structure by overlaying multiple directories. Instead of modifying the original file system or merging directories, UnionFS enables the simultaneous mounting of multiple directories on a single mount point while keeping their contents separate. This feature is especially beneficial in the context of Docker, as it allows us to manage and optimize storage performance by minimizing duplication and reducing the container image size.

Visit the following resources to learn more:

* [@article@AUFS (Advanced Multi-Layered Unification Filesystem)](http://aufs.sourceforge.net/)
* [@article@OverlayFS (Overlay Filesystem)](https://www.kernel.org/doc/html/latest/filesystems/overlayfs.html)
* [@article@Btrfs (B-Tree Filesystem)](https://btrfs.wiki.kernel.org/index.php/Main_Page)
* [@article@ZFS (Z File System)](https://zfsonlinux.org/)
