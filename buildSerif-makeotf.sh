#!/usr/bin/env sh

makeotf -f SourceSerif/font.ufo -r -omitDSIG
mv SourceSerif/SourceSerifPro-Regular.otf SourceSerif-makeotf.otf

# print tools version to stdout and
# add the info to the font's name ID 10
if [[ $1 = "-v" ]]; then
	echo
	versions=`python tools/getMakeotfVersions.py`
	echo "$versions"
	python tools/addToolsVersion.py SourceSerif-makeotf.otf "$versions"
fi
