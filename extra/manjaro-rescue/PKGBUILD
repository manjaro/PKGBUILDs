# Maintainer: Stefano Capitani <stefanoatmanjarodotorg>

pkgname=manjaro-rescue
pkgver=2.1.1
pkgrel=1
arch=('any')
license=('GPL3')
url='https://gitlab.manjaro.org/ste74/manjaro-rescue'
pkgdesc="Restore your installed system"
depends=('zenity' 'mkinitcpio' 'grub' 'os-prober' 'pamac-cli' 'pacman' 'util-linux' 'manjaro-tools-base' 'st'
		'manjaro-log-helper' 'bmenu')
optdepends=('timeshft: System restore utility for Linux')
source=("$url/-/archive/$pkgver/$pkgname-$pkgver.tar.gz")
sha256sums=('0b41f950e025bf9623844c4efdc793dcb6071756652d16932f5ce7bd17d65040')

package() {
		cp -rf $srcdir/$pkgname-$pkgver/usr $pkgdir/

		chmod 755 $pkgdir/usr/bin/manjaro-rescue
		chmod 755 $pkgdir/usr/share/manjaro/grub-restore/grub-apply-efi
		chmod 755 $pkgdir/usr/share/manjaro/grub-restore/grub-apply-legacy
		chmod 755 $pkgdir/usr/share/manjaro/grub-restore/grub-restore
}

