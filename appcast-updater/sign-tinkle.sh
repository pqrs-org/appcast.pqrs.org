#!/bin/bash

basedir=$(dirname $0)
cd "$basedir"

targetdir="../sites/tinkle/static/files"
binariesdir="binaries/tinkle"

latest_dmg=$(ruby scripts/get-latest.rb $binariesdir/Tinkle-*.dmg)
version=$(echo $(basename $latest_dmg .dmg) | sed 's|Tinkle-||')
signature=$(sparkle/sign_update $latest_dmg)
pubDate=$(ruby scripts/get-time.rb)

if [ "$version" == $(ruby scripts/get-version.rb <"$targetdir/appcast-devel.xml") ]; then
  echo " $(basename $0): Already up-to-date."
  exit 0
fi

if xcrun stapler validate -q $latest_dmg; then
  echo " $(basename $latest_dmg) is notarized"
else
  echo " ERROR: $(basename $latest_dmg) is not notarized"
  exit 1
fi

rm -f "$targetdir/appcast-devel.xml.tmp"

cat >>"$targetdir/appcast-devel.xml.tmp" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>Tinkle Changelog</title>
    <link>https://tinkle.pqrs.org/files/appcast.xml</link>
    <description>Most recent changes with links to updates.</description>
    <language>en</language>

    <item>
      <title>Version $version</title>
      <sparkle:minimumSystemVersion>10.15.0</sparkle:minimumSystemVersion>
      <description><![CDATA[
EOF

cat >>"$targetdir/appcast-devel.xml.tmp" <<EOF
<h2>About v$version Update</h2>
EOF

blackfriday-tool update-descriptions/tinkle.md >>"$targetdir/appcast-devel.xml.tmp"

cat >>"$targetdir/appcast-devel.xml.tmp" <<EOF
<p>
  <a href="https://tinkle.pqrs.org/docs/releasenotes/">More</a>
</p>
]]>
      </description>
      <pubDate>$pubDate</pubDate>
      <enclosure url="https://github.com/pqrs-org/Tinkle/releases/download/beta/Tinkle-$version.dmg"
                 sparkle:version="$version" type="application/octet-stream"
                 $signature
      />
    </item>

  </channel>
</rss>
EOF

mv "$targetdir/appcast-devel.xml.tmp" "$targetdir/appcast-devel.xml"
chmod 644 "$targetdir/appcast-devel.xml"

#
# Copy files to public directory
#

publicdir="../sites/tinkle/public/files/"

cp "$targetdir/appcast-devel.xml" "$publicdir/appcast-devel.xml"
chmod 644 "$publicdir/appcast-devel.xml"

echo \
  '\033[33;40m' \
  "$(basename $0): appcast-devel.xml is updated." \
  '\033[0m'
