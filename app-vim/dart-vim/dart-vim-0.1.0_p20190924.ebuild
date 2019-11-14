# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_COMMIT="f8486e58fb02351689ae247cebf28b5fee326c33"

inherit vcs-snapshot vim-plugin

DESCRIPTION="vim plugin: Syntax highlighting for Dart in Vim"
HOMEPAGE="https://github.com/dart-lang/dart-vim-plugin"
SRC_URI="https://github.com/dart-lang/dart-vim-plugin/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE=""

VIM_PLUGIN_HELPFILES=""
VIM_PLUGIN_HELPTEXT=""
VIM_PLUGIN_HELPURI=""
VIM_PLUGIN_MESSAGES=""

