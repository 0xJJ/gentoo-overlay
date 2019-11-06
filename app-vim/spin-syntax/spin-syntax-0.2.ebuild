# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vcs-snapshot vim-plugin

DESCRIPTION="vim plugin: Spin file syntax highlighting"
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=3019"
SRC_URI="https://github.com/vim-scripts/spin.vim/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE=""
KEYWORDS="~amd64 ~x86"

#VIM_PLUGIN_MESSAGES="filetype"

src_prepare() {
	mkdir ftdetect || die
	cat <<-EOF > ftdetect/spin.vim || die
		" Spin filetype detection file
		" Language:	Spin
		au BufNewFile,BufRead *.spin set filetype=spin
	EOF
	default
}
