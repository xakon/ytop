SHELL		:= /bin/sh
INSTALL		?= install

PREFIX		?= /usr/local
BINDIR		?= ${PREFIX}/bin

TARGET		:= ytop


install: release
	$(INSTALL) -s -t ${DESTDIR}/${BINDIR} target/release/${TARGET}
release:
	cargo build --release --locked


.PHONY: release install
