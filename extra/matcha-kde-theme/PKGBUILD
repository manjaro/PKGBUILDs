# Maintainer: Philip Müller <philm@manjaro.org>

# shellcheck disable=SC2154

pkgbase=matcha-kde
pkgname=(
#         'matcha-kde'
#         'matcha-kde-wallpapers'
         'kvantum-theme-matcha'
#         'konsole-colorscheme-matcha'
#         'yakuake-skin-matcha'
#         'konversation-theme-matcha'
)
_commit=8525e052971c807d3f6797d7baf38f51c81d4b81  # branch/master
pkgver=20191119
pkgrel=1
arch=('any')
url="https://gitlab.com/cscs/matcha-kde"
license=('GPL3')
makedepends=('git')
options=('!strip')
source=("git+${url}.git#commit=${_commit}")
sha256sums=('SKIP')

pkgver() {
  cd "${pkgbase}"
  git show -s --date=format:'%Y%m%d' --format=%cd
}

prepare() {
  cd "${pkgbase}"
}

_install() {
  cd "${pkgbase}"
  install -d "${pkgdir}"/usr/share
  cp -r "$@" "${pkgdir}"/usr/share
}

#package_matcha-kde() {
#  pkgdesc="Matcha theme for KDE Plasma 5"
#  depends=('plasma-workspace')
#  optdepends=('papirus-icon-theme: for a more consistent and beautiful experience (recommended)'
#              'matcha-gtk-theme: for a consistent look in GTK applications'
#              'matcha-kde-wallpapers: matcha KDE wallpapers'
#              'kvantum-theme-matcha: matcha theme for Kvantum (recommended)'
#              'konsole-colorscheme-matcha: matcha theme for Konsole'
#              'yakuake-skin-matcha: matcha theme for Yakuake'
#              'konversation-theme-matcha: matcha theme for Konversation'
#              'matcha-firefox-theme: matcha theme for Firefox')
#  install="${pkgbase}.install"

#  _install plasma aurorae color-schemes
#}

#package_matcha-kde-wallpapers() {
#  pkgdesc="Matcha KDE wallpapers"

#  _install wallpapers
#}

package_kvantum-theme-matcha() {
  pkgdesc="Matcha theme for Kvantum"
  depends=('kvantum')

  _install Kvantum
}

#package_konsole-colorscheme-matcha() {
#  pkgdesc="Matcha theme for Konsole"
#  depends=('konsole')

#  _install konsole
#}

#package_yakuake-skin-matcha() {
#  pkgdesc="Matcha theme for Yakuake"
#  depends=('yakuake')

#  _install yakuake
#}

#package_konversation-theme-matcha() {
#  pkgdesc="Matcha theme for Konversation"
#  depends=('konversation')

#  _install konversation
#}
