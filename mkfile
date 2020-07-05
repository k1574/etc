STDSHEXT = rc
all:VQ:
	echo Run \"mk install\" to install files.
install:VQ: install-$STDSHEXT
	echo -n
install-rc:V:
	./configure.rc
install-sh:V:
	./configure.sh
