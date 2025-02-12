export PKGARCH=arm64
export PKGOS=debian-12
VERSION="$(make kernelversion)-${PKGARCH}-$(date -u +%Y%m%d%H%M)-$(echo ${PKGOS} | sed "s/-//g")"
echo "${VERSION}"
echo "${VERSION}" > ../.version
export KDEB_PKGVERSION="$(cat ../.version)"
# make oldconfig
export DEBEMAIL="luoyonggang@gmail.com"
export DEBFULLNAME="Yonggang Luo"
export KDEB_CHANGELOG_DIST=PKGOS
export KDEB_COMPRESS=zstd
export KDEB_SOURCENAME="linux-zabbly-${KDEB_PKGVERSION}"
