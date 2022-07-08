#
# Maintainer: Mahmoud Mohamed (Ozil) <mmsaeed509@gmail.com> , <https://github.com/mmsaeed509>
#

pkgname=exodia-release
pkgver=1.0
pkgrel=1
pkgdesc="Pacman hooks for Exodia to fix various system files."
arch=('any')
url="https://github.com/Exodia-OS/exodia-release"
license=('GPL3')
md5sums=('SKIP')
prepare() {
    cp -af ../files/* ${srcdir}
}

package() {
    local hooks=${pkgdir}/usr/share/libalpm/hooks
    local bin=${pkgdir}/usr/bin

    install -Dm644 ${srcdir}/exodia-hooks.hook              ${hooks}/exodia-hooks.hook
    install -Dm644 ${srcdir}/exodia-lsb-release.hook        ${hooks}/exodia-lsb-release.hook
    install -Dm644 ${srcdir}/exodia-os-release.hook         ${hooks}/exodia-os-release.hook

    install -Dm755 ${srcdir}/exodia-hooks-runner            ${bin}/exodia-hooks-runner
}
