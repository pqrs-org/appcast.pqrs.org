# Sparkle binaries

These binaries are built from source code at 2.3.0.

```shell
git clone https://github.com/sparkle-project/Sparkle.git
cd Sparkle
git co 2.3.0
git submodule update --init --recursive
xcodebuild -configuration Release -scheme generate_keys SYMROOT="$(pwd)/build"
xcodebuild -configuration Release -scheme sign_update SYMROOT="$(pwd)/build"
```
