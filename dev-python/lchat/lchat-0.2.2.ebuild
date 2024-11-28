# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12,13} )

inherit distutils-r1 pypi

DISTUTILS_USE_PEP517=poetry
DESCRIPTION="LLM Chat in the Shell/Terminal"
HOMEPAGE="https://github.com/abdrysdale/lchat"
SRC_URI="https://files.pythonhosted.org/packages/7e/d9/c0f09ecc58e493fd65c6ff3d9f1abcc2c0a58b9d0aed7967c42f3505b6ba/lchat-0.2.2.tar.gz"
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
