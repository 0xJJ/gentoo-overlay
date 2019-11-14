# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGIT_COMMIT="5099025d0b632a5e56fa457f826153cd37c48d3c"

VIM_PLUGIN_VIM_VERSION="7.0[python]"
inherit vcs-snapshot vim-plugin

DESCRIPTION="vim plugin: text outlining and task management based on Emacs’ Org-Mode"
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=3642 https://github.com/jceb/vim-orgmode"
SRC_URI="https://github.com/jceb/vim-orgmode/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"
LICENSE="AGPL-3 FDL-1.3+"
KEYWORDS="~amd64 ~x86"
IUSE=""

VIM_PLUGIN_HELPFILES=""
VIM_PLUGIN_HELPTEXT=""
VIM_PLUGIN_HELPURI=""
VIM_PLUGIN_MESSAGES=""

