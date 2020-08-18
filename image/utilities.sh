#!/bin/bash
set -e
source /pd_build/buildconfig

## Many Ruby gems and NPM packages contain native extensions and require a compiler.
run minimal_apt_get_install build-essential
## Bundler has to be able to pull dependencies from git.
run minimal_apt_get_install git
# Other dependencies
run minimal_apt_get_install imagemagick libcurl4-openssl-dev libfontenc1 xfonts-75dpi xfonts-base xfonts-encodings xfonts-utils fontconfig libxrender1 libmagickwand-dev
# More dependencies
run minimal_apt_get_install ca-certificates fonts-liberation libappindicator3-1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils 

## Install wkhtmltopdf from Github
run curl -fsSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb -o wk.deb
run dpkg -i wk.deb
run rm -rf wk.deb

run curl -sL https://deb.nodesource.com/setup_10.x | bash -
minimal_apt_get_install nodejs
