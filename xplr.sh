#! usr/bin/env bash
platform="linux"  # or "macos" / "linux-musl"
wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-$platform.tar.gz
tar xzvf xplr-$platform.tar.gz
sudo mv xplr /usr/local/bin/
rm xplr-$platform.tar.gz