# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/bleachbit.local

# bleachbit profile
include /etc/firejail/disable-common.inc
# include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
#ipc-namespace
no3d
nogroups
nonewprivs
noroot
nosound
novideo
protocol unix
seccomp
shell none

# private-bin
# private-dev
# private-tmp
# private-etc

memory-deny-write-execute
noexec ${HOME}
noexec /tmp
