# Sparkle binaries

These binaries are built from source code at a6ff74889ee3306555adf69afa76d4c6e8978954.

```shell
git clone https://github.com/sparkle-project/Sparkle.git
cd Sparkle
git co master
git submodule update --init --recursive
xcodebuild -configuration Release -scheme generate_keys SYMROOT="$(pwd)/build"
xcodebuild -configuration Release -scheme sign_update SYMROOT="$(pwd)/build"
```
