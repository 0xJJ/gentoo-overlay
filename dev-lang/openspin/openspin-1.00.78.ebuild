# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit vcs-snapshot

DESCRIPTION="Spin/PASM compiler for the Parallax Propeller"
HOMEPAGE="https://github.com/parallaxinc/OpenSpin"
SRC_URI="https://github.com/parallaxinc/OpenSpin/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# TODO: static build for now
src_install() {
	dobin build/openspin
}
