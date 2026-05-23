# Maintainer: Stefano Capitani <stefano@manjaro.org>

pkgname=manjaro-log-helper
pkgver=0.3.4+3+ga471e55
pkgrel=2
pkgdesc="Gathers selected system logs and optionally sends them to the internet."
arch=('any')
url="https://gitlab.manjaro.org/ste74/manjaro-log-helper"
license=('GPL-2.0-or-later')
depends=(
  'bash'
  'manjaro-icons'
  'xclip'
  'xdg-utils'
  'yad'
)
makedepends=('git')
_commit=a471e55d8b0cd1f15e45fa546f39dbec8092829a
source=("git+https://gitlab.manjaro.org/ste74/manjaro-log-helper.git#commit=${_commit}")
sha256sums=('cedf67698734a50b3ee827f13c05ef0f539424abc72188b4358227172b1901f1')

pkgver() {
  cd "$pkgname"
  git describe --tags --abbrev=7 | sed 's/^v//;s/-/+/g'
}

package() {
  cd "$pkgname"
  install -Dm755 mlh -t "$pkgdir/usr/bin/"
  install -Dm644 "$pkgname.desktop" -t "$pkgdir/usr/share/applications/"
}
