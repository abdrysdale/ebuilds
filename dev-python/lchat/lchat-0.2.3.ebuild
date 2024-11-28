# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1 pypi

DISTUTILS_USE_PEP517=poetry
DESCRIPTION="LLM Chat in the Shell/Terminal"
HOMEPAGE="https://github.com/abdrysdale/lchat"
SRC_URL="https://files.pythonhosted.org/packages/60/b4/2c4598c7fce201b015add3657baeacc98c9fcc17838363b5b8fb64f4e15d/lchat-0.2.3.tar.gz"
S=${WORKDIR}/${P}

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	>=sci-libs/huggingface_hub-0.21.4[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		  dev-python/pytest[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest
