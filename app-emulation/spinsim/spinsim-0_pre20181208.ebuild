# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_COMMIT=bb903fc36f7e6762e56c4b39bdb888c895322a02

inherit toolchain-funcs vcs-snapshot

DESCRIPTION=""
HOMEPAGE="https://github.com/parallaxinc/spinsim"
SRC_URI="https://github.com/parallaxinc/${PN}/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# fix broken makefile
src_compile() {
	local sources=$(echo 'print_SOURCES:;@echo $(SOURCES)' | \
		make -f - -f Makefile --no-print-directory print_SOURCES)
	local x
	for x in ${sources}; do
		$(tc-getCC) \
			${CFLAGS} ${CPPFLAGS} \
			-c -o ${x%\.c}.o ${x} \
			|| die "compile ${PN} failed"
	done
	$(tc-getCC)	\
		${LDFLAGS} \
		-o ${PN} \
		$(for x in ${sources}; do echo -n "${x%\.c}.o "; done) \
		-lm \
		|| die "link ${PN} failed"
}

src_install() {
	dobin spinsim
	dodoc README.md
}
