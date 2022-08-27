cd docs
dpkg-scanpackages --multiversion debian /dev/null | gzip -9c > debian/Packages.gz

