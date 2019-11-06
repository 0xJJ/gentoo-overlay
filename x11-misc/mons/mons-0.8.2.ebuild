# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIB_PN="libshlist"
LIB_PV="1.1"
LIB_P="${LIB_PN}-${LIB_PV}"

DESCRIPTION="script to quickly manage 2-monitors display using xrandr"
HOMEPAGE="https://github.com/Ventto/mons"
SRC_URI="https://github.com/Ventto/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
https://github.com/Ventto/${LIB_PN}/archive/v${LIB_PV}.tar.gz -> ${LIB_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="x11-apps/xrandr"
BDEPEND="sys-apps/help2man"

src_compile() {
	help2man -N -n "${PN}" -h -h -v -v ./${PN} -o ${PN}.1 || die

	# bundle libshlist directly within mons script
	cat - ${WORKDIR}/${LIB_P}/liblist.sh <<- EOF > bundled || die
		#!/bin/sh
		# this a version of ${PN} with ${LIB_P} directly bundled within this file

	EOF
	grep -v lib ${PN} >> bundled || die
}

src_install() {
	doman ${PN}.1
	newbin bundled ${PN}
}
