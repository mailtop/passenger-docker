#!/bin/bash
set -e
source /pd_build/buildconfig

## Many Ruby gems and NPM packages contain native extensions and require a compiler.
run minimal_apt_get_install build-essential
## Bundler has to be able to pull dependencies from git.
run minimal_apt_get_install git
# Other dependencies
run minimal_apt_get_install imagemagick libcurl4-openssl-dev libfontenc1 xfonts-75dpi xfonts-base xfonts-encodings xfonts-utils fontconfig libxrender1

## Install wkhtmltopdf from Github
run curl -fsSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb -o wk.deb
run dpkg -i wk.deb
run rm -rf wk.deb

run curl -sL https://deb.nodesource.com/setup_10.x | bash -
minimal_apt_get_install nodejs
