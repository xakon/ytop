SHELL		:= /bin/sh

PREFIX		?= /usr/local
BINDIR		?= ${PREFIX}/bin

TARGET		:= ytop


install: release
	cp target/release/${TARGET} ${DESTDIR}/${BINDIR}
	strip ${DESTDIR}/${BINDIR}/${TARGET}
release:
	cargo build --release --locked


.PHONY: release install
