#!/usr/bin/env sh

fontmake -u Regular/font.ufo -o otf --production-names
mv master_otf/SourceSansPro-Regular.otf SourceSans-fontmake.otf
rm -r master_otf

# print tools version to stdout and
# add the info to the font's name ID 10
if [[ $1 = "-v" ]]; then
	echo
	versions=`python tools/getFontmakeVersions.py`
	echo "$versions"
	python tools/addToolsVersion.py SourceSans-fontmake.otf "$versions"
fi
