# git clean -xdf
git reset --hard lygstate/aarch64
make oldconfig
mv .config .config.new
git commit -m "TEMP: Remove config from index" .config
mv .config.new .config
make deb-pkg -j16 || make deb-pkg -j16
