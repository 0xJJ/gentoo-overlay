# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="dracut module to run kpartx"
HOMEPAGE="https://github.com/0xJJ/dracut-kpartx"
SRC_URI="https://github.com/0xJJ/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-kernel/dracut"
RDEPEND="${DEPEND}"
BDEPEND=""
