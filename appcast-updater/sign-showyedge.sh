#!/bin/bash

basedir=$(dirname $0)
cd "$basedir"

targetdir="../public"
binariesdir="binaries/showyedge"

latest_dmg=$(ruby scripts/get-latest.rb $binariesdir/ShowyEdge-*.dmg)
version=$(echo $(basename $latest_dmg .dmg) | sed 's|ShowyEdge-||')
signature=$(sparkle/sign_update $latest_dmg)
pubDate=$(ruby scripts/get-time.rb)

if [ "$version" == $(ruby scripts/get-version.rb <"$targetdir/showyedge-appcast-devel.xml") ]; then
  echo " $(basename $0): Already up-to-date."
  exit 0
fi

if xcrun stapler validate -q $latest_dmg; then
  echo " $(basename $latest_dmg) is notarized"
else
  echo " ERROR: $(basename $latest_dmg) is not notarized"
  exit 1
fi

rm -f "$targetdir/showyedge-appcast-devel.xml.tmp"

cat >>"$targetdir/showyedge-appcast-devel.xml.tmp" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>ShowyEdge Changelog</title>
    <link>https://appcast.pqrs.org/showyedge-appcast-devel.xml</link>
    <description>Most recent changes with links to updates.</description>
    <language>en</language>

    <item>
      <title>Version $version</title>
      <sparkle:minimumSystemVersion>11.0</sparkle:minimumSystemVersion>
      <description><![CDATA[<!DOCTYPE html>
<body>
<style>
* {
  font-size: 14px !important;
}
</style>
EOF

cat >>"$targetdir/showyedge-appcast-devel.xml.tmp" <<EOF
<h2>About v$version Update</h2>
EOF

blackfriday-tool update-descriptions/showyedge.md >>"$targetdir/showyedge-appcast-devel.xml.tmp"

cat >>"$targetdir/showyedge-appcast-devel.xml.tmp" <<EOF
<p>
  <a href="https://showyedge.pqrs.org/docs/releasenotes/">More</a>
</p>
</body>
</html>
]]>
      </description>
      <pubDate>$pubDate</pubDate>
      <enclosure url="https://github.com/pqrs-org/ShowyEdge/releases/download/beta/ShowyEdge-$version.dmg"
                 type="application/octet-stream"
                 sparkle:version="$version"
                 $signature
      />
    </item>

  </channel>
</rss>
EOF

mv "$targetdir/showyedge-appcast-devel.xml.tmp" "$targetdir/showyedge-appcast-devel.xml"
chmod 644 "$targetdir/showyedge-appcast-devel.xml"

echo \
  '\033[33;40m' \
  "$(basename $0): appcast-devel.xml is updated." \
  '\033[0m'
