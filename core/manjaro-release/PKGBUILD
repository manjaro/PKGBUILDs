# Maintainer: Guinux <nuxgui@gmail.com>

pkgname=manjaro-release
pkgver=26.0.0
pkgrel=1
pkgdesc="Manjaro's release definition"
arch=("any")
url="https://manjaro.org/"
license=('GPL2')
depends=('lsb-release')
source=('lsb-release')
install="manjaro-release.install"
sha256sums=('5eabf46d3e955a19d01f08484fedbc001028a23f592d731fd67c3f11b8d7ed59')

#pkgver() {
    #parse lsb-release
#    grep 'DISTRIB_RELEASE='  lsb-release | cut -d '=' -f2
#}

package() {
    # Copy files
    mkdir -p ${pkgdir}/etc
    install -m644 ${srcdir}/lsb-release ${pkgdir}/etc/
}
