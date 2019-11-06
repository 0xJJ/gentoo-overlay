# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit vcs-snapshot

MY_PV="${PV/_p/-}"

DESCRIPTION="Parallax Propeller loader supporting both serial and wifi downloads"
HOMEPAGE="https://github.com/parallaxinc/PropLoader"
SRC_URI="https://github.com/parallaxinc/PropLoader/archive/v${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-lang/openspin"

# TODO: CFLAGS and stuff

src_prepare() {
	cp "${FILESDIR}/Makefile-${PV}" Makefile

	default
}

src_install() {
	dobin "${WORKDIR}/proploader-linux-build/bin/proploader"
}
