#!/bin/bash

basedir=$(dirname $0)
cd "$basedir"

targetdir="../public"
binariesdir="binaries/truewidget"

latest_dmg=$(ruby scripts/get-latest.rb $binariesdir/TrueWidget-*.dmg)
version=$(echo $(basename $latest_dmg .dmg) | sed 's|TrueWidget-||')
signature=$(sparkle/sign_update $latest_dmg)
pubDate=$(ruby scripts/get-time.rb)
tag='beta'
(echo "$version" | grep -qE '\.0$') && tag="v$version"

if [ "$version" == $(ruby scripts/get-version.rb <"$targetdir/truewidget-appcast-devel.xml") ]; then
  echo " $(basename $0): Already up-to-date."
  exit 0
fi

if xcrun stapler validate -q $latest_dmg; then
  echo " $(basename $latest_dmg) is notarized"
else
  echo " ERROR: $(basename $latest_dmg) is not notarized"
  exit 1
fi

rm -f "$targetdir/truewidget-appcast-devel.xml.tmp"

cat >>"$targetdir/truewidget-appcast-devel.xml.tmp" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>TrueWidget Changelog</title>
    <link>https://appcast.pqrs.org/truewidget-appcast-devel.xml</link>
    <description>Most recent changes with links to updates.</description>
    <language>en</language>

    <item>
      <title>Version $version</title>
      <sparkle:minimumSystemVersion>13.0</sparkle:minimumSystemVersion>
      <description><![CDATA[<!DOCTYPE html>
<body>
<style>
* {
  font-size: 14px !important;
}
img {
  max-width: 100%;
}
</style>
EOF

cat >>"$targetdir/truewidget-appcast-devel.xml.tmp" <<EOF
<h2>About v$version Update</h2>
EOF

blackfriday-tool update-descriptions/truewidget.md >>"$targetdir/truewidget-appcast-devel.xml.tmp"

cat >>"$targetdir/truewidget-appcast-devel.xml.tmp" <<EOF
</body>
</html>
]]>
      </description>
      <pubDate>$pubDate</pubDate>
      <enclosure url="https://github.com/pqrs-org/TrueWidget/releases/download/$tag/TrueWidget-$version.dmg"
                 type="application/octet-stream"
                 sparkle:version="$version"
                 $signature
      />
      <sparkle:fullReleaseNotesLink>https://truewidget.pqrs.org/docs/releasenotes/</sparkle:fullReleaseNotesLink>
    </item>

  </channel>
</rss>
EOF

mv "$targetdir/truewidget-appcast-devel.xml.tmp" "$targetdir/truewidget-appcast-devel.xml"
chmod 644 "$targetdir/truewidget-appcast-devel.xml"

echo \
  '\033[33;40m' \
  "$(basename $0): appcast-devel.xml is updated." \
  '\033[0m'
