# Pre-Rebuild Inventory

Date:
2026-05-23

Machine:
ThinkPad T430s

Firmware:
UEFI

Disk:
Samsung SSD 870

Current Layout:

/dev/sda
├── sda1 512M EFI
└── sda2 465G ext4

Observations:
Current install is simple and understandable.

Decision:
Rebuild to practice reproducibility.

Decision:
Separate home partition.

Reason:
Preserve user data during rebuilds.

Decision:
Use swap partition.

Reason:
Learn traditional Linux partitioning and support memory overflow.

# Installation Progress

Partition Layout

sda1 → 1G EFI
sda2 → 80G ROOT
sda3 → 16G SWAP
sda4 → HOME

Filesystem

mkfs.fat
mkfs.ext4
mkswap
swapon

Mounts

/mnt
/mnt/boot
/mnt/home
