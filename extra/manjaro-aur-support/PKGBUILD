# Maintainer: Stefano Capitani <stefanoatmanjarodotorg>

pkgname=manjaro-aur-support
pkgver=0.6
pkgrel=4
pkgdesc="Manjaro AUR support packages"
arch=('any')
url="https://gitlab.manjaro.org/packages/manjaro-aur-support"
license=('unknown')
depends=('yad' 'manjaro-icons')
source=("$pkgname.hook"
        "$pkgname.script"
        'check-aur'
        'check-aur.desktop'
        'aur-warning.png')
sha256sums=('eeeee4a1b2c2526d3b6171b7475b0b611e196e1dac0f97ab023cf4464601e1c5'
            '5e1842ff93addcecfa323ef5d0cc61a16d7472554cb59e745f156a5c2fac0c3d'
            'c0b5611b1dae6cb56bc58ea6c9968c5e7a3fb08d5d31cfb5be436227afaecd4b'
            'b6aa4e420252a91aad174c5116643135c3a60f3c3df842bb41b34e7969b9b6b8'
            'd3d3adf942d6dad0cb2fbd89223d42c704b6d8e216349eb35c46f7094ebee624')

package() {
  install -Dm644 "$pkgname.hook" -t "$pkgdir/usr/share/libalpm/hooks/"
  install -Dm755 "$pkgname.script" "$pkgdir/usr/share/libalpm/scripts/$pkgname"
  install -Dm755 check-aur -t "$pkgdir/usr/bin/"
  install -Dm644 check-aur.desktop -t "$pkgdir/etc/skel/.config/autostart/"
  install -Dm644 aur-warning.png -t "$pkgdir/usr/share/icons/hicolor/40x40/status/"
}
