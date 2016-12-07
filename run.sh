# /bin/bash
if [ -n "$WERCKER_SITEMAP_ROOTDIR" ]; then
  WERCKER_SITEMAP_OPTIONS="--root "${WERCKER_SITEMAP_ROOTDIR}" --output "${WERCKER_SITEMAP_ROOTDIR}"/sitemap.xml"
fi

echo "Installing sitemap-gen."
pip install --upgrade -e git+https://github.com/jkawamoto/sitemap-gen#egg=sitemap-gen

echo "Generating a sitemap."
sitemap-gen $WERCKER_SITEMAP_OPTIONS $WERCKER_SITEMAP_BASEURL
